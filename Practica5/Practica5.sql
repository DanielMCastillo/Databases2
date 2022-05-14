/*LOT TABLE*/
CREATE TABLE LOT_P5(
LOT_ID NUMBER(10),
CATALOG_NUMBER NUMBER(10),
STARTINGPRICE NUMBER(10),
REMAINING_AUCTION_TIME DATE,
HIGHEST_BID NUMBER(4)
);
--CREATE PRIMARY KEYS WITH ALTER TABLE
ALTER TABLE LOT_P5 ADD CONSTRAINT LOT_ID_PK PRIMARY KEY(LOT_ID);

/*PRODUCT TABLE*/
CREATE TABLE PRODUCT_P5(
PRODUCT_CODE NUMBER(10),
PRODUCT_NAME VARCHAR2(25),
PRODUCT_DESCRIPTION VARCHAR2(100)
);
--CREATE PRIMARY KEYS WITH ALTER TABLE
ALTER TABLE PRODUCT_P5 ADD CONSTRAINT PROD_ID_PK PRIMARY KEY(PRODUCT_CODE);


/*BID TABLE*/
CREATE TABLE BID_P5(
BID_ID NUMBER(10),
DATE_OF_BID DATE,
QUANTITY NUMBER(10)
);
--CREATE PRIMARY KEYS WITH ALTER TABLE
ALTER TABLE BID_P5 ADD CONSTRAINT BID_ID_PK PRIMARY KEY(BID_ID);


/*CUSTOMER TABLE*/
CREATE TABLE CUSTOMER_P5(
CUST_ID NUMBER(10),
CUST_FIRST_NAME VARCHAR2(50),
CUST_MID_NAME VARCHAR2(50),
CUST_LAST_NAME VARCHAR2(50),
CUST_EMAIL VARCHAR2(50)
);
--CREATE PRIMARY KEYS WITH ALTER TABLE
ALTER TABLE CUSTOMER_P5 ADD CONSTRAINT CUST_ID_PK PRIMARY KEY(CUST_ID);



--PROCESES
/*CONTAINS TABLE*/
CREATE TABLE CONTAINS_P5(
LOT_ID NUMBER(10),
PRODUCT_CODE NUMBER(10),
QUANTITY NUMBER(10)
);
--CREAMOS ALTER DE LLAVES FORANEAS
ALTER TABLE CONTAINS_P5 ADD CONSTRAINT LOT_ID_FK FOREIGN KEY (LOT_ID) REFERENCES LOT_P5(LOT_ID);


/*LOT_BID TABLE*/
CREATE TABLE LOT_BID_P5(
LOT_ID NUMBER(10),
BID_ID NUMBER(10)
);
--CREAMOS ALTER DE LLAVES FORANEAS
ALTER TABLE LOT_BID_P5 ADD CONSTRAINT LOT_BID_FK FOREIGN KEY (LOT_ID) REFERENCES LOT_P5(LOT_ID);
ALTER TABLE LOT_BID_P5 ADD CONSTRAINT BID_BID_FK FOREIGN KEY (BID_ID) REFERENCES BID_P5(BID_ID);
/*OFFERS_TABLE*/
CREATE TABLE OFFERS_P5(
CUST_ID NUMBER(10),
BID_ID NUMBER(10)
);

--CREAMOS ALTER DE LLAVES FORANEAS
ALTER TABLE OFFERS_P5 ADD CONSTRAINT CUST_OF_FK FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER_P5(CUST_ID);
ALTER TABLE OFFERS_P5 ADD CONSTRAINT BID_OF_FK FOREIGN KEY (BID_ID) REFERENCES BID_P5(BID_ID);



--SEQUENCES
--SEQUENCIAS
CREATE SEQUENCE SEQUENCE_LOT_P5
    START WITH 1
    INCREMENT BY 1 
    MAXVALUE 9999
    MINVALUE 1
    NOCYCLE 
    NOCACHE ;

CREATE SEQUENCE SQUENCE_PRODUCT_P5
    START WITH 1
    INCREMENT BY 1 
    MAXVALUE 9999
    MINVALUE 1
    NOCYCLE 
    NOCACHE ;
    

CREATE SEQUENCE SEQUENCE_BID_P5
    START WITH 1
    INCREMENT BY 1 
    MAXVALUE 9999
    MINVALUE 1
    NOCYCLE 
    NOCACHE ;
        
CREATE SEQUENCE SEQUENCE_CUSTOMER_P5
    START WITH 1
    INCREMENT BY 1 
    MAXVALUE 9999
    MINVALUE 1
    NOCYCLE 
    NOCACHE ;    
    
    
    
--SYNONYMS  
 CREATE SYNONYM L_P5 FOR LOT_P5;
 CREATE SYNONYM PROD_P5 FOR PRODUCT_P5;
 CREATE SYNONYM B_P5 FOR BID_P5;
 CREATE SYNONYM CUST_P5 FOR CUSTOMER_P5;
 CREATE SYNONYM CONT_P5 FOR CONTAINS_P5;
 CREATE SYNONYM L_B_P5 FOR LOT_BID_P5;
 CREATE SYNONYM OFFRS_P5 FOR OFFERS_P5;


--INDEX
--TABLA EMPLEADOS_dAMC
CREATE INDEX CAT_NUM_LOT ON LOT_P5(CATALOG_NUMBER);
CREATE INDEX PROD_NAM_PROD ON PRODUCT_P5(PRODUCT_NAME);
CREATE INDEX CUST_NAME ON CUSTOMER_P5(CUSTOMER_NAME);












