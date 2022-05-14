SELECT * FROM AGENCIA;
SELECT * FROM AGENCIA_EMPLEO;
SELECT * FROM CATEGORIA;
SELECT * FROM CLIENTE;
SELECT * FROM EMPLEADO;
SELECT * FROM HABITACION;
SELECT * FROM HABITACION_HOTEL;
SELECT * FROM HABITACION_TIPOHABITACION;
SELECT * FROM HOTEL;
SELECT * FROM CATEGORIA;
SELECT * FROM RESERVA;
SELECT * FROM TIPO_HABITACION;


--AGENCIA
INSERT INTO AGENCIA VALUES (
SEQUENCE_AGENCIA_ID.NextVal,'4921236578','Viajes Buenos', 'Col.Centro, Zacatecas'); 
INSERT INTO AGENCIA VALUES (
SEQUENCE_AGENCIA_ID.NextVal,'0180073234','Viaja seguro', 'Col. Arboles,CDMX'); 
INSERT INTO AGENCIA VALUES (
SEQUENCE_AGENCIA_ID.NextVal,'3335557679','Viajes al sol', 'Jalisco, Guadalajara'); 
INSERT INTO AGENCIA VALUES (
SEQUENCE_AGENCIA_ID.NextVal,'4678653131','Econoviajes', 'Tlalpan, CDMX'); 
INSERT INTO AGENCIA VALUES (
SEQUENCE_AGENCIA_ID.NextVal,'3332221112','Viaja poco', 'Apodaca, Nuevo Le�n'); 

SELECT * FROM AGENCIA;

--HOTEL
INSERT INTO HOTEL VALUES (
SEQUENCE_HOTEL_ID.NextVal,'17/08/2018','HOTEL EL ROBLE', '0180022287', 'Centro, CDMX'); 
INSERT INTO HOTEL VALUES (
SEQUENCE_HOTEL_ID.NextVal,'18/09/2015','HOTEL CENTRO', '0180022222', 'Centro, CDMX'); 
INSERT INTO HOTEL VALUES (
SEQUENCE_HOTEL_ID.NextVal,'17/08/2018','VIVA HOTEL', '4931223345', 'Jalsico, Guadalajara'); 
INSERT INTO HOTEL VALUES (
SEQUENCE_HOTEL_ID.NextVal,'17/03/2014','EMPORIO', '4921334475', 'Centro, Zacatecas'); 
INSERT INTO HOTEL VALUES (
SEQUENCE_HOTEL_ID.NextVal,'17/08/2018','HOTEL EL MAGO', '4922276655', 'Centro, Zacatecas'); 

SELECT * FROM HOTEL;

--AGENCIA_EMPLEO
INSERT INTO CATEGORIA VALUES (
SEQUENCE_CATEGORIA_ID.NextVal,'%30','Categoria minus'); 

INSERT INTO CATEGORIA VALUES (
SEQUENCE_CATEGORIA_ID.NextVal,'%34','Categoria menos'); 

INSERT INTO CATEGORIA VALUES (
SEQUENCE_CATEGORIA_ID.NextVal,'%40','Categoria regular'); 

INSERT INTO CATEGORIA VALUES (
SEQUENCE_CATEGORIA_ID.NextVal,'%50','Categoria plus'); 

INSERT INTO CATEGORIA VALUES (
SEQUENCE_CATEGORIA_ID.NextVal,'%60','Categoria pro'); 


SELECT * FROM CATEGORIA;



--CLIENTE

INSERT INTO CLIENTE VALUES (
SEQUENCE_CLIENTE_ID.NextVal,'Juan','Mendez', 'Perez','4921334576'); 


INSERT INTO CLIENTE VALUES (
SEQUENCE_CLIENTE_ID.NextVal,'Pedro','Olvera', 'Robles','4921217896'); 


INSERT INTO CLIENTE VALUES (
SEQUENCE_CLIENTE_ID.NextVal,'Luis','Zavala', 'Lopez','4921889975'); 


INSERT INTO CLIENTE VALUES (
SEQUENCE_CLIENTE_ID.NextVal,'Daniel','Morales', 'Castillo','4922190147'); 


INSERT INTO CLIENTE VALUES (
SEQUENCE_CLIENTE_ID.NextVal,'Ismael','Morales', 'Rosales','4921217597'); 


SELECT * FROM CLIENTE;


--


INSERT INTO EMPLEADO VALUES (
SEQUENCE_EMPLEADO_ID.NextVal,'4921337566','Ramiro','Castro', 'Almeida'); 

INSERT INTO EMPLEADO VALUES (
SEQUENCE_EMPLEADO_ID.NextVal,'4921337567','Armando','Lopez', 'Carmona'); 

INSERT INTO EMPLEADO VALUES (
SEQUENCE_EMPLEADO_ID.NextVal,'4921337568','Pedro','Elizondo', 'Castro'); 

INSERT INTO EMPLEADO VALUES (
SEQUENCE_EMPLEADO_ID.NextVal,'4921337569','Hector','Alvarado', 'Limones'); 

INSERT INTO EMPLEADO VALUES (
SEQUENCE_EMPLEADO_ID.NextVal,'4921337570','Ricardo','Flores', 'Vazquez'); 

SELECT * FROM EMPLEADO;



-- AGENCIA_EMPLEO
SELECT * FROM AGENCIA;
SELECT * FROM EMPLEADO;

INSERT INTO AGENCIA_EMPLEO VALUES (
SEQUENCE_AGENCIA_EMPLEO_ID.NextVal,1); 

INSERT INTO AGENCIA_EMPLEO VALUES (
SEQUENCE_AGENCIA_EMPLEO_ID.NextVal,2); 

INSERT INTO AGENCIA_EMPLEO VALUES (
SEQUENCE_AGENCIA_EMPLEO_ID.NextVal,2); 

INSERT INTO AGENCIA_EMPLEO VALUES (
SEQUENCE_AGENCIA_EMPLEO_ID.NextVal,3); 

INSERT INTO AGENCIA_EMPLEO VALUES (
SEQUENCE_AGENCIA_EMPLEO_ID.NextVal,4); 

SELECT * FROM AGENCIA_EMPLEO


--HABITACION

INSERT INTO HABITACION VALUES (
SEQUENCE_HABITACION_ID.NextVal,'Habitacion individual'); 


INSERT INTO HABITACION VALUES (
SEQUENCE_HABITACION_ID.NextVal,'Habitacion doble'); 


INSERT INTO HABITACION VALUES (
SEQUENCE_HABITACION_ID.NextVal,'Habitacion triple'); 


INSERT INTO HABITACION VALUES (
SEQUENCE_HABITACION_ID.NextVal,'Habitacion Queen'); 


INSERT INTO HABITACION VALUES (
SEQUENCE_HABITACION_ID.NextVal,'Habitacion King'); 

SELECT * FROM HABITACION;



--HABITACION_HOTEL
INSERT INTO HABITACION_HOTEL VALUES (
SEQUENCE_HABITACION_ID.NextVal,'1'); 

INSERT INTO HABITACION_HOTEL VALUES (
SEQUENCE_HABITACION_HOTEL_ID.NextVal,'1'); 

INSERT INTO HABITACION_HOTEL VALUES (
SEQUENCE_HABITACION_HOTEL_ID.NextVal,'2'); 

INSERT INTO HABITACION_HOTEL VALUES (
SEQUENCE_HABITACION_HOTEL_ID.NextVal,'2'); 


INSERT INTO HABITACION_HOTEL VALUES (
SEQUENCE_HABITACION_HOTEL_ID.NextVal,'4');

INSERT INTO HABITACION_HOTEL VALUES (
SEQUENCE_HABITACION_HOTEL_ID.NextVal,'5'); 

SELECT * FROM HABITACION_HOTEL;



--TIPO HABITACION

INSERT INTO HABITACION_TIPOHABITACION VALUES (
SEQUENCE_HABITACION_TH_ID.NextVal,1); 


INSERT INTO HABITACION_TIPOHABITACION VALUES (
SEQUENCE_HABITACION_TH_ID.NextVal,2); 

INSERT INTO HABITACION_TIPOHABITACION VALUES (
SEQUENCE_HABITACION_TH_ID.NextVal,3); 

INSERT INTO HABITACION_TIPOHABITACION VALUES (
SEQUENCE_HABITACION_TH_ID.NextVal,4); 

INSERT INTO HABITACION_TIPOHABITACION VALUES (
SEQUENCE_HABITACION_TH_ID.NextVal,5); 

SELECT * FROM HABITACION_TIPOHABITACION;



--HOTEL CATEGORIA

INSERT INTO HOTEL_CATEGORIA VALUES (
SEQUENCE_HOTEL_CATEGORIA_ID.NextVal,1,'3 ESTRELLAS'); 

INSERT INTO HOTEL_CATEGORIA VALUES (
SEQUENCE_HOTEL_CATEGORIA_ID.NextVal,2,'3 ESTRELLAS'); 

INSERT INTO HOTEL_CATEGORIA VALUES (
SEQUENCE_HOTEL_CATEGORIA_ID.NextVal,3,'3 ESTRELLAS'); 

INSERT INTO HOTEL_CATEGORIA VALUES (
SEQUENCE_HOTEL_CATEGORIA_ID.NextVal,4,'4 ESTRELLAS'); 

INSERT INTO HOTEL_CATEGORIA VALUES (
SEQUENCE_HOTEL_CATEGORIA_ID.NextVal,5,'5 ESTRELLAS'); 


SELECT * FROM HOTEL_CATEGORIA;



--RESERVA

ID_RESERVA   NOT NULL NUMBER(6)    
FECHA_INICIO          DATE         
PRECIO                VARCHAR2(15) 
FECHA_FIN             DATE         
ID_CLIENTE            NUMBER(6)    
ID_EMPLEADO           NUMBER(6)

SELECT * FROM EMPLEADO;
SELECT * FROM CLIENTE;


INSERT INTO RESERVA VALUES (
SEQUENCE_RESERVA_ID.NextVal, '15/08/2021', '$500 p/noche', '18/08/2021', 1, 2); 

INSERT INTO RESERVA VALUES (
SEQUENCE_RESERVA_ID.NextVal, '18/08/2021', '$1000 p/noche', '20/08/2021', 2, 1); 

INSERT INTO RESERVA VALUES (
SEQUENCE_RESERVA_ID.NextVal, '27/08/2021', '$300 p/noche', '30/08/2021', 3, 2); 

INSERT INTO RESERVA VALUES (
SEQUENCE_RESERVA_ID.NextVal, '10/09/2021', '$500 p/noche', '12/09/2021', 4, 3); 

INSERT INTO RESERVA VALUES (
SEQUENCE_RESERVA_ID.NextVal, '16/09/2021', '$2500 p/noche', '20/09/2021', 5, 4); 

SELECT * FROM RESERVA;


--b) Escribir las sentencias SELECT para observar el comportamiento de  los datos insertados en el punto 2.
SELECT * FROM AGENCIA;
SELECT * FROM AGENCIA_EMPLEO;
SELECT * FROM CATEGORIA;
SELECT * FROM CLIENTE;
SELECT * FROM EMPLEADO;
SELECT * FROM HABITACION;
SELECT * FROM HABITACION_HOTEL;
SELECT * FROM HABITACION_TIPOHABITACION;
SELECT * FROM HOTEL;
SELECT * FROM CATEGORIA;
SELECT * FROM RESERVA;

--c) Ejecutar la sentencia COMMIT para que las inserciones queden de  forma permanente en la Base de Datos.}

COMMIT;


--d) Ejecutar 5 sentencias UPDATE para modificar datos a su criterio.

UPDATE EMPLEADO SET NOMBRE_EMPLEADO = 'LUISA'
WHERE NOMBRE_EMPLEADO = 'Ramiro';

UPDATE EMPLEADO SET NOMBRE_EMPLEADO = 'Luisa'
WHERE NOMBRE_EMPLEADO = 'LUISA';

UPDATE CLIENTE SET NOMBRE_CLIENTE = 'Juana'
WHERE NOMBRE_CLIENTE = 'Juan';

UPDATE HOTEL SET NOMBRE_HOTEL = 'HOTEL EMPORIO'
WHERE NOMBRE_HOTEL = 'EMPORIO';

UPDATE HOTEL SET DOMICILIO = 'Col.Centro Zacatecas'
WHERE DOMICILIO = 'Centro, Zacatecas';

SELECT * FROM EMPLEADO;
SELECT * FROM CLIENTE;
SELECT * FROM HOTEL;

--e) Ejecutar 5 sentencias DELETE para eliminar datos a su criterio.

DELETE FROM AGENCIA
WHERE NOMBRE_AGENCIA = 'Viaja poco';

DELETE FROM AGENCIA
WHERE DOMICILIO_AGENCIA = 'Jalisco, Guadalajara';

DELETE FROM CATEGORIA
WHERE DESCRIPCION = 'Categoria minus';

DELETE FROM RESERVA
WHERE ID_CLIENTE = 3;

DELETE FROM RESERVA
WHERE ID_EMPLEADO = 2;

SELECT * FROM AGENCIA;
SELECT * FROM CATEGORIA;
SELECT * FROM RESERVA;

--f) Elaborar las sentencias necesarias sobre el control de transacciones, haciendo uso de la siguiente estructura:
--1
SELECT * FROM EMPLEADO;
UPDATE EMPLEADO SET APPATERNO_EMPLEADO = 'Fernandez'
WHERE APPATERNO_EMPLEADO = 'Flores';
SELECT * FROM EMPLEADO;
DELETE FROM EMPLEADO
WHERE NOMBRE_EMPLEADO = 'Ricardo';
COMMIT;

--2

SELECT * FROM HOTEL;
UPDATE HOTEL SET DOMICILIO = 'Zocalo,CDMX'
WHERE DOMICILIO = 'Centro, CDMX';
SELECT * FROM HOTEL;
SAVEPOINT CAMBIANDO_DIRECCIONES;
DELETE FROM HOTEL 
WHERE ID_HOTEL = 3;
SELECT * FROM HOTEL;
SAVEPOINT HOTEL_ELIMINADO;
INSERT INTO HOTEL VALUES (
SEQUENCE_HOTEL_ID.NextVal,'17/08/2018','HOTEL EL MAGO', '4922276655', 'Centro, Zacatecas'); 
SELECT * FROM HOTEL;
ROLLBACK TO CAMBIANDO_DIRECCIONES;
ROLLBACK;



--3
SELECT * FROM HABITACION;
UPDATE HABITACION SET NOMBRE_HABITACION = 'Habitacion presidencial'
WHERE NOMBRE_HABITACION = 'Habitacion triple';
SELECT * FROM HABITACION;
COMMIT;



--4 
SELECT * FROM AGENCIA;
UPDATE AGENCIA SET NOMBRE_AGENCIA = 'Viajes pedrito'
WHERE NOMBRE_AGENCIA = 'Viaja seguro';
SELECT * FROM AGENCIA;
UPDATE AGENCIA SET ID_AGENCIA = 1
WHERE NOMBRE_AGENCIA = 1;
SELECT * FROM AGENCIA;
COMMIT;

--5
SELECT * FROM CATEGORIA;
UPDATE CATEGORIA SET DESCRIPCION = 'Categoria economica'
WHERE DESCRIPCION = 'Categoria menos';
SELECT * FROM CATEGORIA;
DELETE FROM CATEGORIA
WHERE DESCRIPCION = 'Categoria plus';
SELECT * FROM CATEGORIA;
CREATE TABLE HOTEL_EXCLUSIVO(
ID_HOTEL VARCHAR2(10),
NOMBRE_HOTEL VARCHAR2(25)
)
ROLLBACK;
SELECT * FROM CATEGORIA;





