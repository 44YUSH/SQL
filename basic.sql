-- Active: 1765891258196@@127.0.0.1@3306@LearnDB

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Departments VALUES
(1, 'Computer Science', 'Bhubaneswar'),
(2, 'Information Technology', 'Cuttack'),
(3, 'Electronics', 'Rourkela'),
(4, 'Mechanical', 'Sambalpur');

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    dept_id INT,
    marks INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

INSERT INTO Students VALUES
(101, 'Aayush', 21, 'Male', 1, 88),
(102, 'Rahul', 22, 'Male', 2, 72),
(103, 'Sneha', 20, 'Female', 1, 91),
(104, 'Pooja', 23, 'Female', 3, 65),
(105, 'Karan', 21, 'Male', 4, 70),
(106, 'Neha', 22, 'Female', 2, 85),
(107, 'Rohit', 21, 'Male', 3, 78),
(108, 'Anjali', 20, 'Female', 1, 95);

SELECT * FROM Departments;

SELECT * FROM Students;


CREATE TABLE temp(
    id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL
);
INSERT INTO temp VALUES
(101, "A"),
(102, "B");
SELECT * FROM temp;
DROP TABLE temp;