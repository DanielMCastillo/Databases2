SELECT * FROM PRODUCT_INFORMATION;

SELECT COUNT(*), SUM(LIST_PRICE), PRODUCT_STATUS FROM PRODUCT_INFORMATION
WHERE PRODUCT_STATUS <> 'orderable'
GROUP BY PRODUCT_STATUS HAVING SUM(LIST_PRICE) > 4000;



---4
SELECT ROUND(AVG(LENGTH(COUNTRY_NAME)),0) AVERAGE_COUNTRY_NAME_LENGTH FROM COUNTRIES;


SELECT * FROM JOB_HISTORY;

SELECT TO_CHAR(END_DATE,'YYYY') AS "Quitting year", JOB_ID, COUNT(*) AS "Number of employees"
FROM JOB_HISTORY GROUP BY END_DATE, JOB_ID ORDER BY 3 DESC;