CREATE OR REPLACE PACKAGE pkg_wheels_ctx AS
    g_cancelacion_cascada BOOLEAN := FALSE;
END pkg_wheels_ctx;
/


CREATE OR REPLACE TRIGGER trg_viajes_toca_sede
BEFORE INSERT OR UPDATE OF direccionIdOrigen, direccionIdDestino ON Viajes
FOR EACH ROW
DECLARE
    v_cantidad_sedes NUMBER;
BEGIN

    SELECT COUNT(*)
      INTO v_cantidad_sedes
      FROM Sedes
     WHERE direccionID IN (:NEW.direccionIdOrigen,
                           :NEW.direccionIdDestino);

    IF v_cantidad_sedes = 0 THEN
        RAISE_APPLICATION_ERROR(-20001,
            'El viaje debe salir o llegar a una sede universitaria.');
    END IF;

END;
/


CREATE OR REPLACE TRIGGER trg_viajes_estado
BEFORE UPDATE OF estado ON Viajes
FOR EACH ROW
WHEN (OLD.estado <> NEW.estado)
BEGIN

    IF :OLD.estado IN ('completado', 'cancelado') THEN
        RAISE_APPLICATION_ERROR(-20002,
            'No se puede modificar el estado de un viaje completado o cancelado.');
    END IF;

    IF :NEW.estado = 'cancelado' THEN

        IF :OLD.fechaHoraSalida - SYSDATE < 2/24 THEN
            RAISE_APPLICATION_ERROR(-20003,
                'Un viaje solo se puede cancelar con al menos 2 horas de anticipación.');
        END IF;

        pkg_wheels_ctx.g_cancelacion_cascada := TRUE;

        BEGIN
            UPDATE Solicitudes
               SET estado = 'cancelada'
             WHERE paradaID IN (SELECT paradaID
                                  FROM Paradas
                                 WHERE tripId = :NEW.tripId)
               AND estado IN ('pendiente', 'aceptada');
        EXCEPTION
            WHEN OTHERS THEN
                pkg_wheels_ctx.g_cancelacion_cascada := FALSE;
                RAISE;
        END;

        pkg_wheels_ctx.g_cancelacion_cascada := FALSE;

    ELSIF NOT (    (:OLD.estado = 'programado' AND :NEW.estado = 'en curso')
                OR (:OLD.estado = 'en curso'   AND :NEW.estado = 'completado') ) THEN

        RAISE_APPLICATION_ERROR(-20004,
            'Transición de estado inválida. Secuencia: programado, en curso, completado.');

    END IF;

END;
/


CREATE OR REPLACE TRIGGER trg_solicitudes_cancelar
BEFORE UPDATE OF estado ON Solicitudes
FOR EACH ROW
WHEN (OLD.estado <> NEW.estado AND NEW.estado = 'cancelada')
DECLARE
    v_hora_salida DATE;
BEGIN

    IF pkg_wheels_ctx.g_cancelacion_cascada THEN
        RETURN;
    END IF;

    IF :OLD.estado <> 'aceptada' THEN
        RAISE_APPLICATION_ERROR(-20005,
            'Solo se puede cancelar una solicitud confirmada (aceptada).');
    END IF;

    SELECT v.fechaHoraSalida
      INTO v_hora_salida
      FROM Paradas p
      JOIN Viajes  v ON v.tripId = p.tripId
     WHERE p.paradaID = :NEW.paradaID;

    IF v_hora_salida - SYSDATE < 2/24 THEN
        RAISE_APPLICATION_ERROR(-20006,
            'Una solicitud solo se puede cancelar con al menos 2 horas de anticipación.');
    END IF;

END;
/
