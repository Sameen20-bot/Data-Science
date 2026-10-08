create database Intro_SQL;

use Intro_SQL;

DROP TABLE Students;

create table Students(
    student_id int,
    student_age int,
    student_name varchar(50) not NULL,
    student_gender VARCHAR(1),
    student_location VARCHAR(100)
);

select * from students;

INSERT INTO students VALUES(01, 22, "Sameen Zaki", 'F', 'Karachi');
INSERT INTO students VALUES(02, 26, " ", 'M', 'Karachi');
INSERT INTO students VALUES(03, 26, "Arsalan", 'M', 'Karachi');


create TABLE department(
    dep_id INT NOT NULL,
    dep_name VARCHAR(50),
    dep_add VARCHAR(100),
    PRIMARY KEY (dep_id)
);

create TABLE emp(
    emp_id INT NOT NULL,
    emp_name VARCHAR(50),
    dep_add VARCHAR(100),
    dep_id INT NOT NULL,
    PRIMARY KEY (emp_id),
    FOREIGN KEY (dep_id) REFERENCES department(dep_id)
);

SELECT * FROM emp;
