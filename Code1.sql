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

