Create database Mock;
show databases;

use mock;

 CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO department values
(10,'IT'),
(20,'HR'),
(30,'SALES'),
(40,'FINANCE'),
(50,'MARKETING');

SELECT * FROM DEPARTMENT;

Create Table employee(
emp_id INT NOT NULL PRIMARY KEY,
emp_name varchar(255),
salary INT,
city varchar(255),
commission int ,
dept_id int,
  foreign key (dept_id)
  references department(dept_id)
   
);

INSERT INTO EMPLOYEE 
(emp_id, emp_name, salary, city, commission, dept_id) values
(101 ,'Amit',30000, 'Delhi', 2000, 10),
(102, 'Priya', 45000, 'Noida', Null, 20),
(103, 'Rahul', 25000, 'Patna', 1500, 10),
(104, 'Sneha', 60000, 'Delhi', Null, 30),
(105, 'Vikas', 35000, 'Noida', 3000, 20),
(106, 'Neha', 50000, 'Jaipur', 2500, 30),
(107, 'Rohit', 28000, 'patna', Null, 10),
(108, 'Pooja', 45000, 'delhi', 1000, 20),
(109, 'Karan', 70000, 'Mumbai', Null, 40),
(110, 'Anjali', 32000, 'Jaipur', 2000, 30);

select *
from employee;

-- Part 1: MySQL theory interview questions

-- Q1 Insert a new employee with ID 111, name 'Ramesh', salary 40000, department 10, city 'Noida' and commission 1000.
insert into employee values
(111, 'Ramesh', 40000,'Noida', 1000,10);

-- Q2 Insert an employee using only emp_id, emp_name and salary.
insert into employee
values
(112,'Ravi',33000,Null, Null,Null);

-- Q3 Increase Amit's salary by 10%.
update employee 
set salary = salary * 1.10
where emp_id = 101;

-- Q4 Change all employees in Patna to city 'Delhi'.
SET SQL_SAFE_UPDATES = 0;
UPDATE employee
set city = 'Delhi'
where city = 'patna';

-- Q5 Update Priya's salary to 50000 and commission to 2000

UPDATE employee
SET salary = 50000,  commission = 2000   
WHERE emp_name = 'priya';

-- B. WHERE, expressions and alias

-- Q1 Display employees whose salary is greater than 40000.
select * from employee
where salary > 40000;

-- Q2 Display employee names and salaries with an additional column showing annual salary.
select emp_name, salary, salary * 12 as annual_salary from employee;

-- Q3 Display emp_name as Employee_Name and salary as Monthly_Salary.
select emp_name as Employee_Name, salary as Monthly_Salary from employee;

-- Q4 Display employees whose salary is exactly 45000.
select * from employee
where salary = 45000;

-- Q5 Display employees whose salary is less than or equal to 35000.
select * from employee
where salary <= 35000;

-- C. AND, OR and NOT

-- Q1 Display employees whose salary is greater than 30000 AND city is Delhi.

select * from employee
where salary > 30000 AND city = 'Delhi';

-- Q2 Display employees who belong to department 10 OR department 30.

select * from employee 
where dept_id = 10 OR department =30;

-- Q3 Display employees whose salary is greater than 40000 AND department ID is 30.
select * from employee
where  salary > 40000 AND dept_id = 30;

-- Q4 Display employees who live in Jaipur OR Patna.

select * from employee
where city = 'jaipur' OR city = 'Patna';

-- Q5 Display employees who are NOT from Delhi.

select * from employee
where city != 'Delhi';


 

