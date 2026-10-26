CREATE TABLE Localidad(
    localidadID NUMBER(3) CONSTRAINT pk_localidad PRIMARY KEY,
    nombre VARCHAR2(50) CONSTRAINT nn_localidad_nombre NOT NULL
);

CREATE TABLE Direcciones (
    direccionID NUMBER(10) CONSTRAINT pk_direccion PRIMARY KEY,
    referencia  VARCHAR2(200) CONSTRAINT nn_dir_ref NOT NULL,
    localidadID NUMBER(3) CONSTRAINT nn_dir_localidad NOT NULL,
    CONSTRAINT fk_dir_localidad FOREIGN KEY (localidadID)
        REFERENCES Localidad(localidadID)
);

CREATE TABLE Sedes(
    sedeID NUMBER(3) CONSTRAINT pk_sedes PRIMARY KEY,
    nombre VARCHAR2(100) CONSTRAINT nn_nombresedes NOT NULL
        CONSTRAINT uq_nombresedes UNIQUE,
    direccionID NUMBER(10) CONSTRAINT nn_sedesdir NOT NULL
        CONSTRAINT uq_sedesdir UNIQUE,
    CONSTRAINT fk_sedesdir FOREIGN KEY (direccionID)
        REFERENCES Direcciones(direccionID)
);

CREATE TABLE Estudiantes(
    studentId NUMBER(10) CONSTRAINT pk_estudiantes PRIMARY KEY,
    nombre VARCHAR2(60) CONSTRAINT nn_studentname NOT NULL,
    apellido VARCHAR2(60) CONSTRAINT nn_studentlastname NOT NULL,
    cedula VARCHAR2(20) CONSTRAINT nn_cedula NOT NULL
        CONSTRAINT uq_cedula UNIQUE,
    correoInstitucional VARCHAR2(100) CONSTRAINT nn_est_correo NOT NULL
        CONSTRAINT uq_est_correo UNIQUE
        CONSTRAINT ck_est_correo CHECK (correoInstitucional LIKE '%.edu.co'),
    celular VARCHAR2(10) CONSTRAINT nn_est_celular NOT NULL
        CONSTRAINT ck_est_celular CHECK (LENGTH(celular) = 10),
    universidad VARCHAR2(60) CONSTRAINT nn_est_universidad NOT NULL,
    programa VARCHAR2(80) CONSTRAINT nn_est_programa NOT NULL,
    contrasena VARCHAR2(30) DEFAULT 'estudiante123' CONSTRAINT nn_est_contrasena NOT NULL
);

CREATE TABLE Vehiculo(
    placa VARCHAR2(6) CONSTRAINT pk_vehiculo PRIMARY KEY
        CONSTRAINT ck_veh_placa CHECK (REGEXP_LIKE(placa, '^[A-Z]{3}[0-9]{3}$')),
    marca VARCHAR2(40) CONSTRAINT nn_carbrand NOT NULL,
    modelo VARCHAR2(60) CONSTRAINT nn_carmodel NOT NULL,
    anio NUMBER(4) CONSTRAINT nn_veh_anio NOT NULL
        CONSTRAINT ck_veh_anio CHECK (anio >= 1800),
    cuposDisp NUMBER(2) CONSTRAINT nn_veh_cupos NOT NULL
        CONSTRAINT ck_veh_cupos CHECK (cuposDisp BETWEEN 1 AND 12),
    color VARCHAR2(30) CONSTRAINT nn_veh_color NOT NULL
);

CREATE TABLE Conductores(
    studentId NUMBER(10) CONSTRAINT pk_conductores PRIMARY KEY,
    placa VARCHAR2(6) CONSTRAINT nn_cond_placa NOT NULL
        CONSTRAINT uq_cond_placa UNIQUE,
    CONSTRAINT fk_cond_estudiante FOREIGN KEY (studentId)
        REFERENCES Estudiantes(studentId),
    CONSTRAINT fk_driver FOREIGN KEY (placa)
        REFERENCES Vehiculo(placa)
);

CREATE TABLE Pasajeros(
    studentId NUMBER(10) CONSTRAINT pk_pasajeros PRIMARY KEY,
    CONSTRAINT fk_passenger FOREIGN KEY (studentId)
        REFERENCES Estudiantes(studentId)
);

CREATE TABLE Viajes(
    tripId VARCHAR2(10) CONSTRAINT pk_viajes PRIMARY KEY,
    conductor NUMBER(10) CONSTRAINT nn_viajes_conductor NOT NULL,
    direccionIdOrigen NUMBER(10) CONSTRAINT nn_viajes_origen NOT NULL,
    direccionIdDestino NUMBER(10) CONSTRAINT nn_viajes_destino NOT NULL,
    fechaHoraSalida DATE CONSTRAINT nn_viajes_salida NOT NULL,
    fechaHoraLlegada DATE,
    estado VARCHAR2(15) CONSTRAINT nn_viajes_estado NOT NULL
        CONSTRAINT ck_viajes_estado CHECK (estado IN ('programado','en curso','completado','cancelado')),
    cuposDisponibles NUMBER(2) CONSTRAINT nn_viajes_cupos NOT NULL
        CONSTRAINT ck_viajes_cupos CHECK (cuposDisponibles >= 0),
    costo NUMBER(10,2) CONSTRAINT nn_viajes_costo NOT NULL
        CONSTRAINT ck_viajes_costo CHECK (costo >= 0),
    distanciaKm NUMBER(6,2),
    CONSTRAINT fk_viajes_conductor FOREIGN KEY (conductor)
        REFERENCES Conductores(studentId),
    CONSTRAINT fk_viajes_origen FOREIGN KEY (direccionIdOrigen)
        REFERENCES Direcciones(direccionID),
    CONSTRAINT fk_viajes_destino FOREIGN KEY (direccionIdDestino)
        REFERENCES Direcciones(direccionID),
    CONSTRAINT ck_viajes_origen_destino CHECK (direccionIdOrigen <> direccionIdDestino),
    CONSTRAINT ck_viajes_completado CHECK (estado <> 'completado'
        OR (fechaHoraLlegada IS NOT NULL AND distanciaKm IS NOT NULL))
);

CREATE TABLE Paradas(
    paradaID VARCHAR2(10) CONSTRAINT pk_paradas PRIMARY KEY,
    tripId VARCHAR2(10) CONSTRAINT nn_par_trip NOT NULL,
    direccionId NUMBER(10) CONSTRAINT nn_par_dir NOT NULL,
    orden NUMBER(3) CONSTRAINT nn_par_orden NOT NULL
        CONSTRAINT ck_par_orden CHECK (orden > 0),
    CONSTRAINT fk_par_viaje FOREIGN KEY (tripId)
        REFERENCES Viajes(tripId),
    CONSTRAINT fk_par_direccion FOREIGN KEY (direccionId)
        REFERENCES Direcciones(direccionID),
    CONSTRAINT uq_par_trip_orden UNIQUE (tripId, orden)
);

CREATE TABLE Solicitudes(
    solicitudID VARCHAR2(10) CONSTRAINT pk_solicitudes PRIMARY KEY,
    paradaID VARCHAR2(10) CONSTRAINT nn_sol_parada NOT NULL,
    studentId NUMBER(10) CONSTRAINT nn_sol_pasajero NOT NULL,
    fechaSolicitud DATE DEFAULT SYSDATE CONSTRAINT nn_sol_fecha NOT NULL,
    estado VARCHAR2(10) DEFAULT 'pendiente' CONSTRAINT nn_sol_estado NOT NULL
        CONSTRAINT ck_sol_estado CHECK (estado IN ('pendiente','aceptada','rechazada','cancelada')),
    CONSTRAINT fk_sol_parada FOREIGN KEY (paradaID)
        REFERENCES Paradas(paradaID),
    CONSTRAINT fk_sol_pasajero FOREIGN KEY (studentId)
        REFERENCES Pasajeros(studentId)
);
