-- Q21. Drop the column address from the Emp table.
ALTER TABLE EMP DROP COLUMN ADDRESS;

 

-- Q22. Change the salary of employee Smith from 1500 to 2000 and change his department from 10 to 20.
UPDATE Emp SET SAL = 2000, DEPTNO = 20 WHERE ENAME = 'SMITH';

 

-- Q23. Display all the employees who are hired in the year 1981 and 1982.
SELECT ENAME FROM Emp
WHERE HIREDATE LIKE '%81' OR HIREDATE LIKE '%82';

 

-- Q24. Display the hiredate of the employees in the format 2nd of March, 2026 (DD"th" "of" Month, YYYY).
SELECT TO_CHAR(HIREDATE, 'DDth "of" Month, YYYY') FROM Emp;

 




-- Q25. Concatenate the name and job of the employees in a single column in the Emp table.
SELECT ENAME || ' ' || JOB FROM Emp;

