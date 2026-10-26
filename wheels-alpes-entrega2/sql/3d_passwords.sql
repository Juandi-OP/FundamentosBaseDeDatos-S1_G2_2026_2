-- La columna contrasena ya viene en 1_esquema.sql con DEFAULT 'estudiante123'.
-- Solo los conductores tienen otra contrasena.
UPDATE Estudiantes
   SET contrasena = 'conductor123'
 WHERE studentId IN (SELECT studentId FROM Conductores);

COMMIT;
