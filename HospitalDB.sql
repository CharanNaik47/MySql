CREATE DATABASE HospitalDB;
USE HospitalDB;

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(50) NOT NULL,
    Specialization VARCHAR(40),
    ExperienceYears INT,
    Gender CHAR(1),
    JoinDate DATE,
    Salary DECIMAL(10,2)
);

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 1),
    Gender CHAR(1),
    Disease VARCHAR(50),
    AdmitDate DATE,
    BillAmount DECIMAL(10,2)
);

ALTER TABLE Patients
ADD DoctorID INT;

ALTER TABLE Patients
ADD CONSTRAINT  Doctor_ID
FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID);

INSERT INTO Doctors VALUES
(101, 'Dr. Sharma', 'Cardiology', 15, 'M', '2010-06-01', 90000),
(102, 'Dr. Anjali', 'Neurology', 10, 'F', '2013-03-15', 85000),
(103, 'Dr. Rakesh', 'Orthopedics', 12, 'M', '2012-08-20', 88000),
(104, 'Dr. Pooja', 'Dermatology', 7, 'F', '2016-01-10', 75000),
(105, 'Dr. Suresh', 'Pediatrics', 9, 'M', '2014-11-05', 80000),
(106, 'Dr. Kavita', 'Gynecology', 11, 'F', '2011-09-12', 87000),
(107, 'Dr. Vikas', 'Oncology', 14, 'M', '2009-12-01', 95000),
(108, 'Dr. Ritu', 'ENT', 6, 'F', '2017-02-18', 72000),
(109, 'Dr. Deepak', 'Nephrology', 13, 'M', '2010-07-25', 91000),
(110, 'Dr. Preeti', 'Psychiatry', 5, 'F', '2019-05-05', 70000);


INSERT INTO Patients VALUES
(1, 'Ravi Kumar', 35, 'M', 'Fever', '2023-06-01', 1500),
(2, 'Sneha Patil', 28, 'F', 'Cold', '2023-07-01', 1200),
(3, 'Amit Shah', 40, 'M', 'Diabetes', '2023-05-15', 5000),
(4, 'Priya Singh', 32, 'F', 'Asthma', '2023-06-10', 2500),
(5, 'Karan Mehta', 45, 'M', 'Heart Disease', '2023-06-20', 10000),
(6, 'Meera Joshi', 30, 'F', 'Fracture', '2023-07-11', 7000),
(7, 'Arjun Nair', 29, 'M', 'Fever', '2023-05-25', 1800),
(8, 'Neha Rao', 26, 'F', 'Cold', '2023-06-30', 1400),
(9, 'Rahul Das', 38, 'M', 'Kidney Stone', '2023-07-15', 8500),
(10, 'Divya Kulkarni', 27, 'F', 'Migraine', '2023-07-20', 3000);

DELETE FROM Patients;

INSERT INTO Patients (PatientID, PatientName, Age, Gender, Disease, AdmitDate, BillAmount, DoctorID)
VALUES
(101, 'Ravi Kumar', 30, 'M', 'Fever', '2025-08-01', 3500.00, 101),
(102, 'Anita Sharma', 25, 'F', 'Cold', '2025-08-03', 2000.00, 102),
(103, 'Suresh Gupta', 45, 'M', 'Diabetes', '2025-08-05', 12000.00, 103),
(104, 'Priya Verma', 32, 'F', 'Asthma', '2025-08-07', 8000.00, 104),
(105, 'Arjun Singh', 28, 'M', 'Malaria', '2025-08-09', 6000.00, 105),
(106, 'Neha Joshi', 40, 'F', 'Thyroid', '2025-08-11', 7500.00, 106),
(107, 'Vikram Patel', 35, 'M', 'Fracture', '2025-08-13', 15000.00, 107),
(108, 'Kiran Rao', 29, 'F', 'Allergy', '2025-08-15', 3000.00, 108),
(109, 'Rahul Mehta', 50, 'M', 'Heart Disease', '2025-08-17', 25000.00, 109),
(110, 'Meena Kumari', 38, 'F', 'Kidney Stone', '2025-08-19', 18000.00, 110);

SELECT * FROM Patients WHERE Disease IN ('Fever','Cold');
SELECT * FROM Doctors WHERE Specialization IN ('Cardiology','Neurology');
SELECT * FROM Patients WHERE PatientID IN (1,3,5,7);
SELECT * FROM Doctors WHERE ExperienceYears IN (5,10,15);

SELECT * FROM Patients WHERE Disease NOT IN ('Diabetes','Asthma');
SELECT * FROM Doctors WHERE Specialization NOT IN ('Orthopedics','Pediatrics');
SELECT * FROM Patients WHERE PatientID NOT IN (2,4,6);
SELECT * FROM Doctors WHERE DoctorName NOT IN ('Dr. Sharma','Dr. Preeti');

SELECT * FROM Patients WHERE BillAmount IS NOT NULL;
SELECT * FROM Doctors WHERE Gender IS null;
SELECT * FROM Patients WHERE Disease IS  Null;
SELECT * FROM Doctors WHERE Specialization IS NOT NULL;

SELECT * FROM Patients WHERE PatientName LIKE 'R%';
SELECT * FROM Doctors WHERE Specialization LIKE '%ology%';
SELECT * FROM Patients WHERE PatientName LIKE '%a';
SELECT * FROM Doctors WHERE DoctorName LIKE '%t_%';

SELECT * FROM Patients WHERE Age BETWEEN 25 AND 35;
SELECT * FROM Doctors WHERE Salary BETWEEN 80000 AND 90000;
SELECT * FROM Patients WHERE BillAmount  BETWEEN 2000 AND 7000;
SELECT * FROM Doctors WHERE ExperienceYears BETWEEN 6 AND 10;

SELECT * FROM Patients WHERE Age NOT BETWEEN 25 AND 35;
SELECT * FROM Doctors WHERE Salary NOT BETWEEN 80000 AND 90000;
SELECT * FROM Patients WHERE BillAmount NOT BETWEEN 2000 AND 7000;
SELECT * FROM Doctors WHERE ExperienceYears NOT BETWEEN 6 AND 10;

SELECT PatientName AS FullName, Disease FROM Patients;
SELECT DoctorName, Salary AS MonthlyPay FROM Doctors;
SELECT PatientID, AdmitDate AS AdmittedOn FROM Patients;
SELECT DoctorID, ExperienceYears AS WorkYears FROM Doctors;

SELECT * FROM Patients ORDER BY Age;
SELECT * FROM Doctors ORDER BY Salary DESC;
SELECT * FROM Patients ORDER BY PatientName ASC;
SELECT * FROM Doctors ORDER BY ExperienceYears DESC, Salary DESC;
