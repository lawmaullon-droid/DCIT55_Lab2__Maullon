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
(202014912, "STEVEN", "ESPIDIDO", "ROSALDO", "2001-01-01", "FILIPINO", "MALE"),
(202014165, "NINA KLARISSE", "ULANGKAY", "AMBROSIO", "2001-01-02", "FILIPINO", "FEMALE"),
(202011535, "ADRIAN", "CARRANZA", "RUBIA", "2001-01-03", "FILIPINO", "MALE"),
(202011818, "JEAN", "DACLES", "RICO", "2001-01-04", "FILIPINO", "FEMALE"),
(202012336, "GILLIAN KYLE", "CATAHAN", "DIMAALA", "2001-01-05", "FILIPINO", "MALE"
);

ALTER TABLE tblSTUDENT CHANGE gender sex VARCHAR(10);
ALTER TABLE tblSTUDENT MODIFY birthdate DATE;
ALTER TABLE tblSTUDENT CHANGE citizenship citizenship VARCHAR(20);
ALTER TABLE tblSTUDENT ADD age INT(3);
ALTER TABLE tblSTUDENT RENAME studentinfo;


SELECT
REPLACE(citizenship, 'Filipino','Pinoy') AS newcitizenship
FROM studentinfo;

SELECT firstName,UPPER(firstName)
FROM studentinfo;

SELECT lastName, UPPER(lastName)
FROM studentinfo;

SELECT middleName, UPPER(middleName)
FROM studentinfo;

SELECT * FROM tblSTUDENT;
SELECT * FROM studentinfo;



DROP TABLE tblSTUDENT;

DROP DATABASE tblStudent;