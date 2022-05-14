SELECT * FROM CLIENTE;

SELECT ID_EMPLEADO, NOMBRE_EMPLEADO FROM EMPLEADO WHERE LOWER(APPATERNO_EMPLEADO) = 'lopez';


SELECT ID_EMPLEADO, NOMBRE_EMPLEADO FROM EMPLEADO WHERE UPPER(APPATERNO_EMPLEADO) = 'castro';

--initcap
SELECT INITCAP(NOMBRE_CLIENTE)FROM CLIENTE;

--CONCAT
SELECT * FROM RESERVA;

SELECT ID_RESERVA, CONCAT(FECHA_INICIO, FECHA_FIN) FECHAS, PRECIO, ID_CLIENTE, ID_EMPLEADO
FROM RESERVA;

--SUBSTR
SELECT SUBSTR(PRECIO, 2) FROM RESERVA;

--LENGTH
SELECT LENGTH(PRECIO) FROM RESERVA;


--INSTR
SELECT * FROM HOTEL;
SELECT INSTR(NOMBRE_HOTEL, 'H') FROM HOTEL;


--LPAD, RPAD

SELECT * FROM AGENCIA;


SELECT LPAD(NOMBRE_AGENCIA,2,'*')  FROM AGENCIA;
SELECT RPAD(NOMBRE_AGENCIA,2,'*')  FROM AGENCIA;



--TRIM
SELECT * FROM CLIENTE;
SELECT TRIM('J' FROM NOMBRE_CLIENTE) FROM CLIENTE;



SELECT * FROM CATEGORIA;

SELECT IVA, REMPLACE('%', '-') FROM CATEGORIA;

--ROUND
SELECT * FROM AGENCIA_EMPLEO;