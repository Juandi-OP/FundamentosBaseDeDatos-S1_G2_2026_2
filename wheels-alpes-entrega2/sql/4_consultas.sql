-- RFC1 - Demanda por localidad en un periodo
SELECT l.nombre AS localidad,
       COUNT(s.solicitudID) AS solicitudes
  FROM Localidad l
  LEFT JOIN Direcciones d ON d.localidadID = l.localidadID
  LEFT JOIN Paradas     p ON p.direccionId = d.direccionID
  LEFT JOIN Solicitudes s ON s.paradaID = p.paradaID
                         AND s.fechaSolicitud >= TRUNC(DATE '2026-09-01')
                         AND s.fechaSolicitud <  TRUNC(DATE '2026-09-15') + 1
 GROUP BY l.nombre
 ORDER BY solicitudes DESC;


-- RFC2 - Ingresos estimados por localidad y periodo
SELECT l.nombre AS localidad,
       COUNT(aceptadas.solicitudID) AS solicitudes_aceptadas,
       NVL(SUM(aceptadas.costo), 0) AS ingresos
  FROM Localidad l
  LEFT JOIN Direcciones d ON d.localidadID = l.localidadID
  LEFT JOIN (SELECT p.direccionId, s.solicitudID, v.costo
               FROM Solicitudes s
               JOIN Paradas p ON p.paradaID = s.paradaID
               JOIN Viajes  v ON v.tripId = p.tripId
              WHERE s.estado = 'aceptada'
                AND s.fechaSolicitud >= TRUNC(DATE '2026-09-01')
                AND s.fechaSolicitud <  TRUNC(DATE '2026-09-15') + 1) aceptadas
         ON aceptadas.direccionId = d.direccionID
 GROUP BY l.nombre
 ORDER BY ingresos DESC;


-- RFC3 (a) - Viajes por conductor, diario
SELECT v.conductor,
       CONCAT(CONCAT(e.nombre, ' '), e.apellido) AS conductor_nombre,
       TO_CHAR(v.fechaHoraSalida, 'YYYY-MM-DD') AS periodo,
       COUNT(*) AS viajes
  FROM Viajes v
  JOIN Estudiantes e ON e.studentId = v.conductor
 WHERE v.estado <> 'cancelado'
   AND v.fechaHoraSalida >= TRUNC(DATE '2026-10-01')
   AND v.fechaHoraSalida <  TRUNC(DATE '2026-10-31') + 1
 GROUP BY v.conductor, e.nombre, e.apellido, TO_CHAR(v.fechaHoraSalida, 'YYYY-MM-DD')
 ORDER BY v.conductor, periodo;


-- RFC3 (b) - Viajes por conductor, mensual
SELECT v.conductor,
       CONCAT(CONCAT(e.nombre, ' '), e.apellido) AS conductor_nombre,
       TO_CHAR(v.fechaHoraSalida, 'YYYY-MM') AS periodo,
       COUNT(*) AS viajes
  FROM Viajes v
  JOIN Estudiantes e ON e.studentId = v.conductor
 WHERE v.estado <> 'cancelado'
   AND v.fechaHoraSalida >= TRUNC(DATE '2026-08-01')
   AND v.fechaHoraSalida <  TRUNC(DATE '2026-10-31') + 1
 GROUP BY v.conductor, e.nombre, e.apellido, TO_CHAR(v.fechaHoraSalida, 'YYYY-MM')
 ORDER BY v.conductor, periodo;


-- RFC3 (c) - Viajes por conductor, diario, filtrado por conductor y localidad
SELECT v.conductor,
       CONCAT(CONCAT(e.nombre, ' '), e.apellido) AS conductor_nombre,
       TO_CHAR(v.fechaHoraSalida, 'YYYY-MM-DD') AS periodo,
       COUNT(*) AS viajes
  FROM Viajes v
  JOIN Estudiantes e ON e.studentId = v.conductor
 WHERE v.estado <> 'cancelado'
   AND v.fechaHoraSalida >= TRUNC(DATE '2026-10-01')
   AND v.fechaHoraSalida <  TRUNC(DATE '2026-10-31') + 1
   AND v.conductor = 1
   AND v.tripId IN (SELECT p.tripId
                      FROM Paradas p
                      JOIN Direcciones d ON d.direccionID = p.direccionId
                     WHERE d.localidadID = 2)
 GROUP BY v.conductor, e.nombre, e.apellido, TO_CHAR(v.fechaHoraSalida, 'YYYY-MM-DD')
 ORDER BY v.conductor, periodo;


-- RFA1 - Tablero del conductor
SELECT v.conductor,
       CONCAT(CONCAT(e.nombre, ' '), e.apellido) AS conductor_nombre,
       NVL(SUM(aceptadas.pasajeros), 0) AS pasajeros_transportados,
       NVL(ROUND(SUM((v.fechaHoraLlegada - v.fechaHoraSalida) * 1440), 1), 0) AS tiempo_total_min,
       NVL(SUM(aceptadas.pasajeros * v.costo), 0) AS ingresos,
       NVL(SUM(v.distanciaKm), 0) AS distancia_total_km
  FROM Viajes v
  JOIN Estudiantes e ON e.studentId = v.conductor
  LEFT JOIN (SELECT p.tripId, COUNT(*) AS pasajeros
               FROM Paradas p
               JOIN Solicitudes s ON s.paradaID = p.paradaID
              WHERE s.estado = 'aceptada'
              GROUP BY p.tripId) aceptadas
         ON aceptadas.tripId = v.tripId
 WHERE v.estado = 'completado'
   AND v.conductor = 1
 GROUP BY v.conductor, e.nombre, e.apellido;


-- RFA2 (a) - Tablero del pasajero: viajes, gastos y promedios
SELECT COUNT(*) AS viajes_tomados,
       NVL(SUM(v.costo), 0) AS gastos_totales,
       NVL(ROUND(AVG(v.distanciaKm), 2), 0) AS promedio_distancia_km,
       NVL(ROUND(AVG((v.fechaHoraLlegada - v.fechaHoraSalida) * 1440), 2), 0) AS promedio_tiempo_min
  FROM Solicitudes s
  JOIN Paradas p ON p.paradaID = s.paradaID
  JOIN Viajes  v ON v.tripId = p.tripId
 WHERE s.estado = 'aceptada'
   AND v.estado = 'completado'
   AND s.studentId = 100;


-- RFA2 (b) - Tablero del pasajero: zona con mas viajes
SELECT l.nombre AS zona,
       COUNT(*) AS viajes
  FROM Solicitudes s
  JOIN Paradas     p ON p.paradaID = s.paradaID
  JOIN Viajes      v ON v.tripId = p.tripId
  JOIN Direcciones d ON d.direccionID = p.direccionId
  JOIN Localidad   l ON l.localidadID = d.localidadID
 WHERE s.estado = 'aceptada'
   AND v.estado = 'completado'
   AND s.studentId = 100
 GROUP BY l.nombre
 ORDER BY viajes DESC
 FETCH FIRST 1 ROWS ONLY;
