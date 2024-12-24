CREATE DATABASE WORKSHP2;
USE WORKSHP2;

CREATE TABLE APP_DETAILS(
APP_ID INT AUTO_INCREMENT PRIMARY KEY,
APP_NAME VARCHAR(200) NOT NULL UNIQUE,
APP_VERSION VARCHAR(25) NOT NULL,
NUMBER_OF_USERS INT DEFAULT 0
);

CREATE TABLE USER_DETAILS(
USER_ID INT AUTO_INCREMENT PRIMARY KEY,
USER_NAME VARCHAR(20) NOT NULL,
USER_EMAIL VARCHAR(100) NOT NULL UNIQUE,
APP_ID INT,
FOREIGN KEY (APP_ID) REFERENCES APP_DETAILS(APP_ID) ON DELETE SET NULL
);

INSERT INTO APP_DETAILS(APP_NAME,APP_VERSION,NUMBER_OF_USERS) VALUES
('HOTSTAR','2.0V',4),
('WHATSAPP','2.9V',5),
('OLA','2.7V',9),
('SWIGGY','2.8V',9),
('TELEGRAM','2.9V',5);

SELECT * FROM APP_DETAILS;

INSERT INTO USER_DETAILS(USER_NAME,USER_EMAIL,APP_ID) VALUES
('POOJITHA','POOJITHAS1@GMAIL.COM',3);

SELECT * FROM USER_DETAILS;

SELECT * FROM USER_DETAILS AS U,APP_DETAILS AS A WHERE U.USER_NAME='POOJITHA' AND U.APP_ID=A.APP_ID;

SELECT USER_NAME,APP_NAME FROM USER_DETAILS AS U,APP_DETAILS AS A WHERE U.APP_ID=A.APP_ID;

SELECT AVG(NUMBER_OF_USERS) FROM APP_DETAILS;
SELECT SUM(NUMBER_OF_USERS) FROM APP_DETAILS;
SELECT MAX(NUMBER_OF_USERS) FROM APP_DETAILS;
SELECT MIN(NUMBER_OF_USERS) FROM APP_DETAILS;
SELECT COUNT(*) FROM USER_DETAILS;

