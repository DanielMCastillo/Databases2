/*Channel table*/

CREATE TABLE P4_CHANNEL(
CHANNEL_ID NUMBER(4),
CNAME VARCHAR2(25)
)


ALTER TABLE P4_CHANNEL ADD CONSTRAINT CHANNEL_ID_PK PRIMARY KEY(CHANNEL_ID);


CREATE TABLE P4_EMPLOYEE(
EMP_ID NUMBER(4),
EMP_NAME VARCHAR2(25),
EMP_LASTN VARCHAR2(25),
BOSS_ID NUMBER(4),
ADDRESS VARCHAR2(50),
DATE_OF_BIRTH DATE,
GENDER VARCHAR2(15),
BENEFICIARIES VARCHAR2(25)
);

ALTER TABLE P4_EMPLOYEE ADD CONSTRAINT EMPLOYEE_ID_PK PRIMARY KEY (EMP_ID);

CREATE TABLE P4_PRODUCT(
PRODUCT_ID NUMBER(4),
PNAME VARCHAR(25),
SALE_PRICE VARCHAR(25),
PURCHASE_PRICE VARCHAR(25),
PROVIDER VARCHAR(25)
);

ALTER TABLE P4_PRODUCT ADD CONSTRAINT PRODUCT_ID_PK PRIMARY KEY(PRODUCT_ID);



CREATE TABLE P4_SHOP(
SHOP_ID NUMBER(4),
ADDRESS VARCHAR2(25),
MANAGER_SHOP VARCHAR2(25)
);


ALTER TABLE P4_SHOP ADD CONSTRAINT SHOP_ID_PK PRIMARY KEY(SHOP_ID);



CREATE TABLE P4_SALES(
SALE_ID NUMBER(4),
CHANNEL_ID NUMBER(4),
PRODUCT_ID NUMBER(4),
SHOP_ID NUMBER(4),
QUANTITY VARCHAR2(25),
EMP_ID NUMBER(4),
SALE_DATE DATE
);


--PRIMARY KEY
ALTER TABLE P4_SALES ADD CONSTRAINT SALES_ID_PK PRIMARY KEY(SALE_ID);
--FOREINGS KEYS
ALTER TABLE P4_SALES ADD CONSTRAINT S_CHANNEL_ID_FK FOREIGN KEY (CHANNEL_ID) REFERENCES P4_CHANNEL(CHANNEL_ID);
ALTER TABLE P4_SALES ADD CONSTRAINT S_PRODUCT_ID_FK FOREIGN KEY (PRODUCT_ID) REFERENCES P4_PRODUCT(PRODUCT_ID);
ALTER TABLE P4_SALES ADD CONSTRAINT S_SHOP_ID_FK FOREIGN KEY (SHOP_ID) REFERENCES P4_SHOP(SHOP_ID);
ALTER TABLE P4_SALES ADD CONSTRAINT S_EMP_ID_FK FOREIGN KEY (EMP_ID) REFERENCES P4_EMPLOYEE(EMP_ID);


--INDEX
CREATE INDEX P4_EMP_NOM_INDX ON P4_EMPLOYEE(EMP_NAME);
CREATE INDEX P4_PRO_NAM_INDX ON P4_PRODUCT(PNAME);


--SEQUENCES
CREATE SEQUENCE SEQUENCE_SALE_ID
    INCREMENT BY 1
    START WITH 1;
CREATE SEQUENCE SEQUENCE_CHANNEL_ID
    INCREMENT BY 1
    START WITH 1;
CREATE SEQUENCE SEQUENCE_PRODUCT_ID
    INCREMENT BY 1
    START WITH 1;
CREATE SEQUENCE SEQUENCE_SHOP_ID
    INCREMENT BY 1
    START WITH 1;
CREATE SEQUENCE SEQUENCE_EMPLOYEE_ID
    INCREMENT BY 1
    START WITH 1;


--SYNONYMS
CREATE SYNONYM P4_CH FOR P4_CHANNEL;
CREATE SYNONYM P4_EMP FOR P4_EMPLOYEE;
CREATE SYNONYM P4_PROD FOR P4_PRODUCT;
CREATE SYNONYM P4_SH FOR P4_SHOP;
CREATE SYNONYM P4_S FOR P4_SALES;


--DROPTABLES
DROP TABLE P4_CHANNEL;
DROP TABLE P4_EMPLOYEE;
DROP TABLE P4_PRODUCT;
DROP TABLE P4_SHOP;
DROP TABLE P4_SALES;


--PRACTICA6 
--actividad2

INSERT INTO P4_SHOP(SHOP_ID,ADDRESS,MANAGER_SHOP)
VALUES(SEQUENCE_SHOP_ID.NEXTVAL, 'ZACATECAS ZAC','JUAN ROBLES');

INSERT INTO P4_CHANNEL(CHANNEL_ID,CNAME)
VALUES(SEQUENCE_CHANNEL_ID.NEXTVAL, 'CANAL  5 ');

INSERT INTO P4_PRODUCT(PRODUCT_ID, PNAME,SALE_PRICE, PURCHASE_PRICE, PROVIDER)
VALUES(SEQUENCE_PRODUCT_ID.NEXTVAL, 'FUNKOS','400','350','FUNKOPOP');


INSERT INTO P4_EMPLOYEE(EMP_ID,EMP_NAME,EMP_LASTN,BOSS_ID,ADDRESS,DATE_OF_BIRTH,GENDER,BENEFICIARIES)
VALUES(SEQUENCE_EMPLOYEE_ID.NEXTVAL, 'DANIEL','CASTILLO',2,'FERROCARRIL 2','15/08/1999','MALE','MEJOR EMPLEADO');







