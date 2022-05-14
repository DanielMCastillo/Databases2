--(a


INSERT INTO REGIONES_DAMC SELECT * FROM HR.REGIONS;

INSERT INTO LOCALIZACION_DAMC SELECT * FROM HR.LOCATIONS;

INSERT INTO PAISES_DAMC SELECT * FROM HR.COUNTRIES;


INSERT INTO TRABAJOS_DAMC(TRABAJO_ID, TITULO_TRABAJO, SALARIO_MIN, SALARIO_MAX) 
    SELECT JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY FROM HR.JOBS;

INSERT INTO HISTORIA_LABORAL_DAMC SELECT * FROM HR.JOB_HISTORY;

INSERT INTO EMPLEADOS_DAMC SELECT * FROM HR.EMPLOYEES;

INSERT INTO DEPARTAMENTOS_DAMC SELECT * FROM HR.DEPARTMENTS;

INSERT INTO DEPARTAMENTOS_DAMC(DEPARTAMENTO_ID, NOMBRE_DEPARTAMENTO, LOCALIZACION_ID) 
    SELECT DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID FROM HR.DEPARTMENTS;
    
INSERT INTO EMPLEADOS_DAMC(DEPARTAMENTO_ID, NOMBRE_EMPLEADO, APELLIDO_EMPLEADO, CORREO_ELECTRONICO,NUMERO_TELEFONO,FECHA_CONTRATACION, ) 
    SELECT DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID FROM HR.DEPARTMENTS;

SELECT * FROM REGIONES_DAMC;
SELECT * FROM HR.REGIONS;
--REGIONES SI

SELECT * FROM LOCALIZACION_DAMC;
SELECT  * FROM HR.LOCATIONS;
--LOCALIZACIONES SI

SELECT * FROM TRABAJOS_DAMC;
SELECT * FROM HR.JOBS;
--TRABAJOS NO
SELECT * FROM PAISES_DAMC;
SELECT * FROM HR.COUNTRIES;
--PAISES SI
SELECT * FROM HISTORIA_LABORAL_DAMC;
SELECT * FROM HR.JOB_HISTORY;
--HISTORIA LABORAL NO

SELECT * FROM EMPLEADOS_DAMC;
SELECT * FROM HR.EMPLOYEES;
--EMPLEADOS NO

SELECT * FROM DEPARTAMENTOS_DAMC;
SELECT * FROM HR.DEPARTMENTS;
--DEPARTAMENTOS SI PERO SIN EL MANAGER_ID -- ERRORES CONSTANTES


DESCRIBE TRABAJOS_DAMC;
DESCRIBE HR.JOBS;
DESCRIBE HISTORIA_LABORAL_DAMC;
DESCRIBE HR.JOB_HISTORY;
DESCRIBE EMPLEADOS_DAMC;
DESCRIBE HR.EMPLOYEES;
DESCRIBE DEPARTAMENTOS_DAMC;
DESCRIBE HR.DEPARTMENTS;