CREATE OR REPLACE FUNCTION fn_auth(
    p_username IN VARCHAR2,
    p_password IN VARCHAR2
) RETURN BOOLEAN IS
    v_n NUMBER;
BEGIN
    SELECT COUNT(*)
      INTO v_n
      FROM estudiantes
     WHERE LOWER(correoinstitucional) = LOWER(p_username)
       AND contrasena = p_password;

    RETURN v_n = 1;
END fn_auth;
/

-- Prueba (debe devolver OK):
-- SELECT CASE WHEN fn_auth('est100@javeriana.edu.co', 'estudiante123') THEN 'OK' ELSE 'NO' END AS resultado FROM dual;
