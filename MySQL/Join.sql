CREATE DATABASE model;
USE model;

CREATE TABLE stu_info(
	stu_no int PRIMARY KEY,
    f_name varchar(15) NOT NULL,
    l_name varchar(15) NOT NULL,
    city varchar(20) NOT NULL,
    phno bigint(20) NOT NULL
);

INSERT INTO stu_info VALUES(1 , 'Anshul' , 'Gupta' , 'Vadodara' , 708205886);
INSERT INTO stu_info VALUES(2 , 'Anurag' , 'Singh' , 'Chandigarh' , 785413695);
INSERT INTO stu_info VALUES(3 , 'Priyanshu' , 'Rai' , 'Udaipur' , 123654892);
INSERT INTO stu_info VALUES(4 , 'Satyam' , 'Kumar' , 'Patna' , 124578569);
INSERT INTO stu_info VALUES(5 , 'Kundan' , 'Shekhawat' , 'Surat' , 234895612);
INSERT INTO stu_info VALUES(6 , 'Aditya' , 'Singh' , 'Ambala' , 785621548);
INSERT INTO stu_info VALUES(7 , 'Meghana' , 'Priya' , 'Bhuj' , 986547898);
INSERT INTO stu_info VALUES(8 , 'Pandey' , 'Akshay' , 'Patiala' , 145986519);

CREATE TABLE stu_schl(
	roll_no int(2) PRIMARY KEY,
    sub varchar(15) NOT NULL,
    percent int(2) NOT NULL
);

INSERT INTO stu_schl VALUES(1 , 'History' , 89);
INSERT INTO stu_schl VALUES(2 , 'Maths' , 78);
INSERT INTO stu_schl VALUES(3 , 'Maths' , 77);
INSERT INTO stu_schl VALUES(4 , 'Computer' , 87);
INSERT INTO stu_schl VALUES(5 , 'Computer' , 95);
INSERT INTO stu_schl VALUES(6 , 'History' , 96);
INSERT INTO stu_schl VALUES(7 , 'Computer' , 72);
INSERT INTO stu_schl VALUES(8 , 'History' , 65);

SELECT * FROM stu_info;
SELECT * FROM stu_schl;

SELECT *
FROM stu_info, stu_schl;

