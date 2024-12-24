CREATE DATABASE MEDCARE;
USE MEDCARE;

CREATE TABLE PATIENTS (
  PatientID INT NOT NULL UNIQUE,
  Name VARCHAR(100) NOT NULL,
  Diagnosis VARCHAR(100) NOT NULL,
  DoctorID INT NOT NULL,
  AdmissionDate DATE NOT NULL,
  DischargeDate DATE NOT NULL,
  Medication VARCHAR(100) NOT NULL
);

INSERT INTO PATIENTS VALUES(1001, 'John Doe', 'Pneumonia', 1, '2024-02-10', '2024-02-17', 'Antibiotics');
INSERT INTO PATIENTS VALUES(1002, 'Jane Doe', 'Appendicitis', 2, '2024-03-05', '2024-03-12', 'Pain Management');
INSERT INTO PATIENTS VALUES(1003, 'Bob Johnson', 'Diabetes', 3, '2024-01-15', '2024-03-12', 'Insulin');
INSERT INTO PATIENTS VALUES(1004, 'Emily Chen', 'Broken Arm', 4, '2024-04-02', '2024-04-09', 'Pain Relief');
INSERT INTO PATIENTS VALUES(1005, 'Michael Brown', 'Heart Failure', 5, '2024-05-20','2024-03-12', 'Blood Thinners');
INSERT INTO PATIENTS VALUES(1006, 'Alice White', 'Hypertension', 6, '2024-06-11', '2024-06-18', 'ACE Inhibitors');
INSERT INTO PATIENTS VALUES(1007, 'David Black', 'Asthma', 7, '2024-07-03', '2024-07-10', 'Inhalers');

SELECT * FROM PATIENTS;
RENAME TABLE PATIENTS to PATIENTS1;
ALTER TABLE PATIENTS1 ADD COLUMN LastVisitDate date;
SELECT * FROM PATIENTS1; 
SELECT * FROM PATIENTS1 WHERE PATIENTID < 1003;
SELECT * FROM PATIENTS1 WHERE PATIENTID> 1004;
SELECT * FROM PATIENTS1 WHERE PATIENTID <= 1003;
SELECT * FROM PATIENTS1 WHERE PATIENTID >= 1006;
SELECT * FROM PATIENTS1 WHERE PATIENTID = 1001;
SELECT * FROM PATIENTS1 WHERE PATIENTID != 1005;
SELECT * FROM PATIENTS1 WHERE NOT PATIENTID>=1004;
SELECT * FROM PATIENTS1 WHERE PATIENTID=1002 AND Name='Jane doe';
SELECT * FROM PATIENTS1 WHERE PATIENTID=1002 or Name='Jane doe';
SELECT * FROM PATIENTS1 WHERE PATIENTID BETWEEN 1001 AND 1005;
SELECT * FROM PATIENTS1 WHERE PATIENTID IN (1001,1);

truncate table PATIENT1;

CREATE TABLE Doctors (
  DoctorID INT NOT NULL UNIQUE,
  Name VARCHAR(100) NOT NULL,
  Specialization VARCHAR(50) NOT NULL,
  ExperienceYears INT NOT NULL,
  Department VARCHAR(100) NOT NULL,
  Phone VARCHAR(15) NOT NULL UNIQUE,
  Email VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Doctors VALUES(1, 'Dr. Smith', 'Pulmonology', 15, 'Respiratory', '123-111-0000', 'smith@medcare.com');
INSERT INTO Doctors VALUES(2, 'Dr. Johnson', 'General Surgery', 12, 'Surgery', '123-222-0000', 'johnson@medcare.com');
INSERT INTO Doctors VALUES(3, 'Dr. Williams', 'Endocrinology', 20, 'Diabetes & Endocrine', '123-333-0000', 'williams@medcare.com');
INSERT INTO Doctors VALUES(4, 'Dr. Davis', 'Orthopedics', 10, 'Bones', '123-444-0000', 'davis@medcare.com');
INSERT INTO Doctors VALUES(5, 'Dr. Miller', 'Cardiology', 18, 'Heart', '123-555-0000', 'miller@medcare.com');
INSERT INTO Doctors VALUES(6, 'Dr. Taylor', 'Nephrology', 14, 'Kidney', '123-666-0000', 'taylor@medcare.com');
INSERT INTO Doctors VALUES(7, 'Dr. Wilson', 'Pulmonology', 9, 'Respiratory', '123-777-0000', 'wilson@medcare.com');

SELECT * FROM DOCTORS;

RENAME TABLE DOCTORS to DOCTORS1;
ALTER TABLE DOCTORS1 ADD COLUMN Certification varchar(50);
SELECT * FROM DOCTORS1; 
SELECT * FROM DOCTORS1 WHERE DOCTORID < 3;
SELECT * FROM DOCTORS1 WHERE DOCTORID> 4;
SELECT * FROM DOCTORS1 WHERE DOCTORID <= 3;
SELECT * FROM DOCTORS1 WHERE DOCTORID >= 6;
SELECT * FROM DOCTORS1 WHERE DOCTORID = 1;
SELECT * FROM DOCTORS1 WHERE DOCTORID != 5;
SELECT * FROM DOCTORS1 WHERE NOT DOCTORID>=4;
SELECT * FROM DOCTORS1 WHERE DOCTORID=2 AND specialization='cardiology';
SELECT * FROM DOCTORS1 WHERE DOCTORID=1 or specialization>'cardiology';
SELECT * FROM DOCTORS1 WHERE DoctorID BETWEEN 1 AND 5;
SELECT * FROM DOCTORS1 WHERE DoctorID IN (1,18);

TRUNCATE TABLE DOCTORS1;

CREATE TABLE Appointments (
  AppointmentID INT NOT NULL UNIQUE,
  PatientID INT NOT NULL,
  DoctorID INT NOT NULL,
  AppointmentDate DATE NOT NULL,
  Purpose VARCHAR(100) NOT NULL,
  Notes VARCHAR(255) NOT NULL,
  Status VARCHAR(50) NOT NULL
);

INSERT INTO Appointments VALUES(201, 1001, 1, '2024-02-05', 'Follow-up', 'Patient recovering well', 'Completed');
INSERT INTO Appointments VALUES(202, 1002, 2, '2024-03-01', 'Pre-op', 'Patient stable', 'Completed');
INSERT INTO Appointments VALUES(203, 1003, 3, '2024-01-10', 'Check-up', 'Blood sugar levels high', 'Ongoing');
INSERT INTO Appointments VALUES(204, 1004, 4, '2024-03-30', 'Follow-up', 'Fracture healing', 'Completed');
INSERT INTO Appointments VALUES(205, 1005, 5, '2024-05-15', 'Consultation', 'Heart function improved', 'Ongoing');
INSERT INTO Appointments VALUES(206, 1006, 6, '2024-06-05', 'Check-up', 'Blood pressure normal', 'Completed');
INSERT INTO Appointments VALUES(207, 1007, 7, '2024-07-01', 'Consultation', 'Asthma under control', 'Completed');

SELECT * FROM Appointments; 

RENAME TABLE Appointments to Appointments1;
ALTER TABLE Appointments1 ADD COLUMN FollowUpDate DATE;
SELECT * FROM Appointments1; 
SELECT * FROM Appointments1 WHERE AppointmentID < 204;
SELECT * FROM Appointments1 WHERE AppointmentID > 204;
SELECT * FROM Appointments1 WHERE AppointmentID <= 203;
SELECT * FROM Appointments1 WHERE AppointmentID >= 206;
SELECT * FROM Appointments1 WHERE AppointmentID = 201;
SELECT * FROM Appointments1 WHERE AppointmentID != 205;
SELECT * FROM Appointments1 WHERE NOT AppointmentID>=204;
SELECT * FROM Appointments1 WHERE AppointmentID=202 AND DOCTORID=2;
SELECT * FROM Appointments1 WHERE AppointmentDATE='2024-03-30' OR AppointmentID>202;
SELECT * FROM Appointments1 WHERE AppointmentID BETWEEN 201 AND 205;
SELECT * FROM Appointments1 WHERE AGENTID IN (201,205);

TRUNCATE TABLE Appointments;