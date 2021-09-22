CREATE DATABASE Model_1;
USE Model_1;

CREATE TABLE student(
	roll_no int PRIMARY KEY,
    stu_name varchar(30) NOT NULL,
    age int NOT NULL,
    department varchar(30) NOT NULL,
    date_of_adm date NOT NULL,
    sex varchar(1) NOT NULL
);

INSERT INTO student VALUES(1 , 'Pankaj' , 24 , 'Computer' , '1997-01-10' , 'M');
INSERT INTO student VALUES(2 , 'Shalini' , 21 , 'History' , '1998-03-24' , 'F');
INSERT INTO student VALUES(3 , 'Sanjay' , 22 , 'Hindi' , '1996-12-12' , 'M');
INSERT INTO student VALUES(4 , 'Sudha' , 25 , 'History' , '1999-07-01' , 'F');
INSERT INTO student VALUES(5 , 'Rakesh' , 22 , 'Hindi' , '1997-09-05' , 'M');
INSERT INTO student VALUES(6 , 'Shakeel' , 30 , 'History' , '1998-06-27' , 'M');
INSERT INTO student VALUES(7 , 'Surya' , 34 , 'Computer' , '1997-02-25' , 'M');
INSERT INTO student VALUES(8 , 'Shikha' , 23 , 'Hindi' , '1997-07-31' , 'F');

SELECT * FROM student;

SELECT * FROM student
WHERE department = 'History';

SELECT * FROM student
WHERE department = 'Hindi' AND sex = 'F';

SELECT * FROM student
ORDER BY date_of_adm;

SELECT stu_name, department, age
FROM student
WHERE sex = 'M';

ALTER TABLE student
ADD (fee int);
SELECT * FROM student;

UPDATE student SET fee = 120 WHERE roll_no = 1;
UPDATE student SET fee = 130 WHERE roll_no = 2;
UPDATE student SET fee = 140 WHERE roll_no = 3;
UPDATE student SET fee = 150 WHERE roll_no = 4;
UPDATE student SET fee = 160 WHERE roll_no = 5;
UPDATE student SET fee = 170 WHERE roll_no = 6;
UPDATE student SET fee = 180 WHERE roll_no = 7;
UPDATE student SET fee = 190 WHERE roll_no = 8;

SELECT age, COUNT(*)
FROM student
GROUP BY age
HAVING age < 23;

INSERT INTO student VALUES(9 , 'Zaheer' , 36 , 'Computer' , '1997-03-12' , 'M' , 230);

SELECT * FROM student
WHERE age = 36;

SELECT AVG(fee) FROM student;

ALTER TABLE student
CHANGE COLUMN date_of_adm  DOB date NOT NULL;

