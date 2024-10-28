Create database Institute;
Use Institute;
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Age INT CHECK (Age > 18),  -- Assuming age must be greater than 18
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),  -- Assuming 'M' for Male, 'F' for Female
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);
INSERT INTO Managers (Manager_Id, First_name, Last_name, DOB, Age, Gender, Department, Salary) VALUES
(1, 'John', 'Smith', '1980-04-12', 44, 'M', 'IT', 30000.00),
(2, 'Aaliya', 'Khan', '1985-07-23', 39, 'F', 'HR', 28000.00),
(3, 'James', 'Brown', '1978-10-16', 46, 'M', 'Finance', 35000.00),
(4, 'Maria', 'Garcia', '1990-12-01', 33, 'F', 'IT', 26000.00),
(5, 'Robert', 'Miller', '1982-05-10', 42, 'M', 'Operations', 32000.00),
(6, 'Sophia', 'Taylor', '1988-11-25', 35, 'F', 'IT', 24000.00),
(7, 'Michael', 'Johnson', '1979-03-08', 45, 'M', 'Finance', 31000.00),
(8, 'Emily', 'Clark', '1992-09-19', 32, 'F', 'Marketing', 27000.00),
(9, 'David', 'Martinez', '1984-02-04', 40, 'M', 'IT', 29000.00),
(10, 'Olivia', 'Lopez', '1991-06-15', 33, 'F', 'Finance', 33000.00);
select * from Managers;

SELECT First_name, Last_name, DOB
FROM Managers
WHERE Manager_Id = 1;

SELECT *
FROM Managers
WHERE First_name != 'Aaliya';

SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;

SELECT Manager_Id, First_name, Last_name, (Salary * 12) AS Annual_Income
FROM Managers;