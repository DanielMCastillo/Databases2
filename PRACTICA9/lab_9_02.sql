--2
SELECT EMPLOYEE_ID, LAST_NAME, SALARY, SALARY + ROUND((SALARY*0.155)) AS "NEW SALARY" FROM EMPLOYEES;

--3,4
SELECT EMPLOYEE_ID, LAST_NAME, SALARY, SALARY + ROUND((SALARY*0.155)) AS "NEW SALARY", ROUND((SALARY*0.155)) AS "INCREASE"  FROM EMPLOYEES;

--5
SELECT LAST_NAME AS NAME, LENGTH(LAST_NAME) AS "LENGTH LAST NAME" FROM EMPLOYEES WHERE UPPER(LAST_NAME) LIKE 'A%' OR UPPER(LAST_NAME) LIKE 'J%' OR UPPER(LAST_NAME) LIKE 'M%';


--5 CON h
SELECT LAST_NAME AS NAME, LENGTH(LAST_NAME) AS "LENGTH LAST NAME" FROM EMPLOYEES WHERE UPPER(LAST_NAME) LIKE '&START_LETTER';


--6
SELECT  LAST_NAME,MONTHS_BETWEEN(CURRENT_DATE, HIRE_DATE) AS "MONTHS WORKED"
FROM EMPLOYEES;

SELECT * FROM EMPLOYEES;

--7
SELECT LAST_NAME, LPAD(SALARY,15,'$') FROM EMPLOYEES;

--8
SELECT CONCAT(LAST_NAME,SALARY) AS "EMPLOYEES_AND_THEIR_SALARYS" FROM EMPLOYEES;


--9
SELECT  LAST_NAME,WEEKS_BETWEEN(HIRE_DATE,SYSDATE) AS "TENURE"
FROM EMPLOYEES;
