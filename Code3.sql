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

-- Q26. Display the names of the employees padded with * sign, and the length of the name should be 40.
SELECT LPAD(ENAME, 40, '*') FROM EMP;

 




-- Q27. Display all the names of the employees which are 4 characters long.
SELECT ENAME FROM EMP WHERE LENGTH(ENAME) = 4;
 

-- Q28. Display the first 3 characters of the name in the Emp table.
SELECT SUBSTR(ENAME, 1, 3) FROM EMP;
 

-- Q29. Find the second occurrence of 'S' character in the name.
SELECT INSTR(ENAME, 'S', 1, 2) FROM EMP;
 
-- Q30. Display all the names in the Emp table in lowercase letters.
SELECT LOWER(ENAME) FROM EMP;
