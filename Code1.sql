-- Q1. Display the details of the employees who are not managers.
SELECT * FROM Emp WHERE JOB != 'MANAGER';

-- Q2. Display the details of the employees who were hired in the year 1981.
SELECT * FROM Emp WHERE HIREDATE LIKE '%81';
 
-- Q3. Display the details of the employees who are working in Department No. 10 and 30.
SELECT * FROM Emp WHERE DEPTNO = 10 OR DEPTNO = 30;

-- Q4. Display the details of the employees who are working in department no. 30 and their job is clerk.
SELECT * FROM Emp WHERE DEPTNO = 30 AND JOB = 'CLERK';

-- Q5. Display the details of the employees who are salesman and having salary between 1200 and 2000.
SELECT * FROM Emp WHERE JOB = 'SALESMAN' AND SAL BETWEEN 1200 AND 2000;

-- Q6. Display the total salary of each employee (Salary + Comm).
SELECT ENAME, SAL + NVL(COMM, 0) FROM Emp;
 

-- Q7. Display the name of the employee who is having maximum salary.
SELECT ENAME FROM Emp WHERE SAL = (SELECT MAX(SAL) FROM Emp);

 

-- Q8. Display the employees whose names end with letter 'S'.
SELECT ENAME FROM Emp WHERE ENAME LIKE '%S';

 


-- Q9. Display the employees who are hired in 1982 and their names start with letter 'J'.
SELECT ENAME FROM Emp WHERE HIREDATE LIKE '%82' AND ENAME LIKE 'J%';

 

-- Q10. Display all salesman. Also managers having salary more than 1800.
SELECT * FROM Emp WHERE JOB = 'SALESMAN' OR JOB = 'MANAGER' AND SAL > 1800;
