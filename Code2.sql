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
