CREATE DATABASE tblStudent; 

SHOW DATABASES;

USE tblStudent;

CREATE TABLE tblSTUDENT(
	studentNumber INT(11) PRIMARY KEY, 
    firstName VARCHAR(100),
    lastName VARCHAR(100) NOT NULL,
    middleName VARCHAR(100),
    birthDate VARCHAR(20),
    citizenship VARCHAR(50) COMMENT "Example: Filipino, Nigerian, Korean" ,
    gender VARCHAR(100) COMMENT "Male or Female" 
);

INSERT INTO tblSTUDENT VALUES
(202014912, "STEVEN", "ESPIDIDO", "ROSALDO", "2000-01-01", "FILIPINO", "MALE"),
(202014165, "NINA KLARISSE", "ULANGKAY", "AMBROSIO", "2000-01-02", "FILIPINO", "FEMALE"),
(202011535, "ADRIAN", "CARRANZA", "RUBIA", "2000-01-03", "FILIPINO", "MALE"),
(202011818, "JEAN", "DACLES", "RICO", "20001-01-04", "FILIPINO", "FEMALE"),
(202012336, "GILLIAN KYLE", "CATAHAN", "DIMAALA", "2000-01-05", "FILIPINO", "MALE"
);

ALTER TABLE tblSTUDENT CHANGE gender sex VARCHAR(10);
ALTER TABLE tblSTUDENT MODIFY birthdate DATE;
ALTER TABLE tblSTUDENT CHANGE citizenship citizenship VARCHAR(20);
ALTER TABLE tblSTUDENT ADD age INT(3);
ALTER TABLE tblSTUDENT RENAME studentinfo;

SELECT firstName,UPPER(firstName)
FROM studentinfo;

SELECT lastName, UPPER(lastName)
FROM studentinfo;

SELECT middleName, UPPER(middleName)
FROM studentinfo;

SELECT citizenship, REPLACE(citizenship, "FILIPINO", "PINOY")
FROM studentinfo;

SELECT studentNumber, CONCAT(firstName, ' ', middleName, ' ',lastName) AS fullName
FROM studentinfo;

SELECT REPEAT(lastName, 5) as lastName_repeat
FROM studentinfo;

UPDATE studentinfo 
SET age = DATE_FORMAT(curdate(), '%Y') - DATE_FORMAT(birthdate, '%Y');

SELECT AVG(age) average_age
FROM studentinfo;

SELECT *, DATE_FORMAT(birthdate, '%Y, %M %d') AS bday_format
FROM studentinfo;

SELECT sex, COUNT(*) AS total
FROM studentinfo GROUP BY sex;

SELECT * FROM studentinfo ORDER BY lastName ASC;


DROP TABLE tblSTUDENT;

DROP DATABASE tblStudent;
