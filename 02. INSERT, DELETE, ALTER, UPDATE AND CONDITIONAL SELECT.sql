Aim: To perform INSERT, DELETE, ALTER, and UPDATE operations and retrieve employee records using conditional SELECT statements in MySQL.
Commands
  
1. Create Database and Employee Table
  
CREATE DATABASE IF NOT EXISTS PayrollLabDB;
USE PayrollLabDB;

DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50) NOT NULL,
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    Email VARCHAR(100)
);


2. Insert Employee Records
  
INSERT INTO Employee VALUES
(201,'Arun','Sales',35000,'arun@example.com'),
(202,'Priya','IT',52000,'priya@example.com'),
(203,'Ravi','Operations',41000,'ravi@example.com'),
(204,'Sneha','Sales',46000,'sneha@example.com'),
(205,'Kiran','IT',60000,'kiran@example.com'),
(206,'Divya','Operations',39000,'divya@example.com');

Output:
6 employee records inserted successfully.
  
3. Display All Employee Records
  
SELECT * FROM Employee
ORDER BY Emp_ID;

Output:
Emp_ID	Emp_Name	Department	Salary	  Email
201	    Arun	    Sales	      35000.00	arun@example.com
202	    Priya	    IT	        52000.00	priya@example.com
203	    Ravi	    Operations	41000.00	ravi@example.com
204	    Sneha	    Sales	      46000.00	sneha@example.com
205	    Kiran  	  IT	        60000.00	kiran@example.com
206	    Divya	    Operations	39000.00	divya@example.com
  
4. Update Salary of Sales Department Employees by 10%
  
UPDATE Employee
SET Salary = Salary * 1.10
WHERE Department = 'Sales';

Output:
2 rows updated successfully.
  
Updated salaries:
Emp_Name	Salary
Arun	38500.00
Sneha	50600.00
  
5. Retrieve Employees Whose Salary Is at Least 45000
  
SELECT Emp_Name, Salary
FROM Employee
WHERE Salary >= 45000
ORDER BY Salary DESC;

Output:
Emp_Name	Salary
Kiran	60000.00
Priya	52000.00
Sneha	50600.00
  
6. Add Phone Column to Employee Table
  
ALTER TABLE Employee
ADD COLUMN Phone VARCHAR(15);

Output:
Phone column added successfully.
  
7. Update Phone Number of Employee 201
  
UPDATE Employee
SET Phone = '9000000201'
WHERE Emp_ID = 201;

Output:
Phone number updated successfully for employee 201.
  
8. Delete Employee 206 from Operations Department
  
DELETE FROM Employee
WHERE Department = 'Operations'
AND Emp_ID = 206;

Output:
Employee 206 (Divya) deleted successfully. Employee 203 (Ravi) remains in the table.
  
9. Count the Remaining Employees
SELECT COUNT(*) AS Final_Count
FROM Employee;

Output:
Final_Count
5
  
10. Display the Structure of the Employee Table
  
SHOW COLUMNS FROM Employee;

Output:
Field	Type	Key
Emp_ID	int	PRI
Emp_Name	varchar(50)	
Department	varchar(30)	
Salary	decimal(10,2)	
Email	varchar(100)	
Phone	varchar(15)
