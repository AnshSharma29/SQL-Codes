-- Q11. Display all salesman and managers having salary more than 1800.
SELECT * FROM Emp WHERE (JOB = 'SALESMAN' OR JOB = 'MANAGER') AND SAL > 1800;

-- Q12. Display the employees who were hired in 1981 and 1982 and order the result by their descending names.
SELECT * FROM Emp
WHERE HIREDATE LIKE '%81' OR HIREDATE LIKE '%82'
ORDER BY ENAME DESC;

-- Q13. Display the employees who are not working in department 10 and are managers, and display the result in order of their ascending salary.
SELECT * FROM Emp
WHERE DEPTNO != 10 AND JOB = 'MANAGER'
ORDER BY SAL;

-- Q14. Display the output as per the hiredate in ascending order for the employees who are managers and clerks.
SELECT * FROM Emp
WHERE JOB = 'MANAGER' OR JOB = 'CLERK'
ORDER BY HIREDATE;
 
-- Q15. Display the average salary of managers and clerks, and display the output as per the average salary.
SELECT JOB, AVG(SAL) FROM Emp
WHERE JOB IN ('MANAGER', 'CLERK')
GROUP BY JOB
ORDER BY AVG(SAL);

-- Q16. Give 10% salary hike for all the employees who work in departments 10 and 20.
UPDATE EMP SET SAL = SAL * 1.10 WHERE DEPTNO IN (10, 20);
 
-- Q17. Decrease the salary by 5% for the employees who are managers.
UPDATE EMP SET SAL = SAL * 0.95 WHERE JOB = 'MANAGER';

-- Q18. Increase the salary by 5% for the employee who is having minimum salary.
UPDATE EMP SET SAL = SAL * 1.05
WHERE SAL = (SELECT MIN(SAL) FROM EMP);

 

-- Q19. Increase the salary of Jones and James by 5% and transfer them to Department 20.
UPDATE EMP SET SAL = SAL * 1.05, DEPTNO = 20
WHERE ENAME IN ('JAMES', 'JONES');
 

-- Q20. Add a new column address in the Emp table. Fill the values under the address column, and add a constraint on the address column that the name should start with 'R'.
-- Step 1: add the column
ALTER TABLE EMP ADD ADDRESS VARCHAR2(50);

-- Step 2: fill the values (repeat with other records, e.g. 'Rohtak')
UPDATE EMP SET ADDRESS = 'Rome' WHERE EMPNO = 7369;

-- Step 3: add the constraint
ALTER TABLE EMP ADD CONSTRAINT chk CHECK (ADDRESS LIKE 'R%');
