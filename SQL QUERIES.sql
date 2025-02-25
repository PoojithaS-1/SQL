-- DDL commands:

CREATE DATABASE DETAILS;

DROP DATABASE DETAILS;

CREATE SCHEMA DETAILS;

CREATE SCHEMA DETAILS;

USE DETAILS;
CREATE TABLE APPLICATION_DETAILS(
APP_ID INT,
APP_NAME VARCHAR(100),
APP_VERSION VARCHAR(100),
APP_RELEASE_DATE DATE,
APP_RELEASE_YEAR YEAR,
NUMBER_OF_USERS INT

);

RENAME  TABLE APPLICATION_DETAILS TO APP_NAME;

DROP TABLE APP_NAME;

ALTER TABLE APP_NAME ADD COLUMN APP_SIZE VARCHAR(50);

SELECT * FROM APP_NAME;

INSERT INTO APP_NAME VALUES(1,"INSTAGRAM","V2.8","2000-09-04",2000,40,"49 MB");

SELECT * FROM APP_NAME;
INSERT INTO APP_NAME VALUES(1,"INSTAGRAM","V2.8","2000-09-04",2000,40,"49 MB");

UPDATE APP_NAME SET APP_NAME="INSTAGRAM_LITE";

SET SQL_SAFE_UPDATES=0;

TRUNCATE APP_NAME;
SELECT * FROM APP_NAME;

DROP TABLE APP_NAME;

CREATE TABLE APPLICATION_DETAILS(
APP_ID INT UNIQUE NOT NULL,
APP_NAME VARCHAR(25) UNIQUE NOT NULL,
APP_VERSION VARCHAR(25) NOT NULL,
APP_RELEASE_DATE DATE NOT NULL,
APP_RELEASE_YEAR YEAR NOT NULL,
NUMBER_OF_USERS INT,
APP_SIZE VARCHAR(20) NOT NULL 
);

INSERT INTO APPLICATION_DETAILS VALUES(1,"INSTAGRAM","V2.8","2000-09-04",2000,40,"49 MB");
INSERT INTO APPLICATION_DETAILS VALUES(2,"INSTAGRAM_LITE","V2.8","2000-09-04",2000,40,"49 MB");
INSERT INTO APPLICATION_DETAILS VALUES(3,"SNAPCHAT","V2.8","2000-09-04",2000,40,"49 MB");
INSERT INTO APPLICATION_DETAILS VALUES(4,"WECHAT","V2.8","2000-09-04",2000,40,"49 MB");
INSERT INTO APPLICATION_DETAILS VALUES(5,"OLA","V2.8","2000-09-04",2000,40,"49 MB");

SELECT * FROM APPLICATION_DETAILS;

SELECT * FROM APPLICATION_DETAILS WHERE APP_NAME="WECHAT";

SELECT COUNT(*) FROM APPLICATION_DETAILS;

SELECT COUNT(*) AS COUNT FROM APPLICATION_DETAILS;

SELECT SUM(NUMBER_OF_USERS) AS TOTAL FROM APPLICATION_DETAILS;

INSERT INTO APPLICATION_DETAILS VALUES(6,NULL,"V2.8","2000-09-04",2000,40,"49 MB");

INSERT INTO APPLICATION_DETAILS VALUES(6,"WECHAT","V2.8","2000-09-04",2000,40,"49 MB");

SELECT * FROM APPLICATION_DETAILS WHERE APP_ID>2;

SELECT * FROM APPLICATION_DETAILS WHERE APP_ID<2;

SELECT * FROM APPLICATION_DETAILS WHERE APP_ID>=2;
SELECT * FROM APPLICATION_DETAILS WHERE APP_ID<=2;
SELECT * FROM APPLICATION_DETAILS WHERE APP_ID!=2;
SELECT * FROM APPLICATION_DETAILS WHERE APP_ID=2;
SELECT * FROM APPLICATION_DETAILS WHERE APP_SIZE>"48mb" OR APP_ID=3;



