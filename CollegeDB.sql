CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Students (
    StudentID INT,      
    FullName VARCHAR(50) NOT NULL,               
    Email VARCHAR(100) UNIQUE,                 
    Gender CHAR(1) CHECK (Gender IN ('M','F')), 
    Age INT CHECK (Age BETWEEN 18 AND 30),      
    Course VARCHAR(30) NOT NULL,                  
    Fees DECIMAL(10,2) DEFAULT 30000.00,       
    AdmissionDate DATE NOT NULL                 
);

INSERT INTO Students (FullName, Email, Gender, Age, Course, Fees, AdmissionDate) VALUES
('Rahul naik', 'rahul.naik@email.com', 'M', 22, 'BCA', 35000.00, '2021-05-10'),
('Priya Singh', 'priya.singh@email.com', 'F', 21, 'MCA', 40000.00, '2022-01-15'),
('Amit Bhatt', 'amit.bhatt@email.com', 'M', 23, 'BSc IT', 32000.00, '2020-11-20'),
('Sneha Nayak', 'sneha.nayak@email.com', 'F', 20, 'MBA', 38000.00, '2021-07-12'),
('Kiran Anagod', 'kiran.anagod@email.com', 'M', 24, 'BCom', 30000.00, '2019-04-01'),

('Manthan Nayak', 'manthan_nayak@email.com', 'F', 19, 'BCA', 37000.00, '2022-03-25'),
('Deepak Shet', 'deepak.shet@email.com', 'M', 22, 'MCA', 42000.00, '2020-09-10'),
('Shalini Rao', 'shalini.rao@email.com', 'F', 21, 'BSc IT', 34000.00, '2021-06-18'),
('Arun Naik', 'arun.naik@email.com', 'M', 20, 'MBA', 31000.00, '2022-02-20'),
('Prajwal Ager', 'prajwalAger@email.com', 'F', 22, 'BCom', 36000.00, '2021-08-05'),

('Ravi Kumar', 'ravi.kumar@email.com', 'M', 23, 'BCA', 39000.00, '2020-10-12'),
('Anup Achar', 'anupAchar@email.com', 'F', 21, 'MCA', 35000.00, '2021-01-25'),
('Ajay Shetty', 'ajay.reddy@email.com', 'M', 25, 'MBA', 44000.00, '2019-12-01'),
('Divya Iyer', 'divya.iyer@email.com', 'F', 20, 'BSc IT', 37000.00, '2021-09-15'),
('Sanjay Kumar', 'sanjay.kumar@email.com', 'M', 24, 'BCom', 46000.00, '2018-07-11'),

('Kavita Sharma', 'kavita.sharma@email.com', 'F', 22, 'BCA', 42000.00, '2020-03-18'),
('Anil Kumar', 'anil.kumar@email.com', 'M', 26, 'MCA', 47000.00, '2019-08-25'),
('Sumitha Shetty', 'sumitha.Shetty@email.com', 'F', 21, 'BCom', 35000.00, '2021-11-03'),
('Vikas Jain', 'vikas.jain@email.com', 'M', 23, 'BSc IT', 38000.00, '2022-04-10'),
('Sanath Agarwal', 'sanath.agarwal@email.com', 'F', 20, 'MBA', 36000.00, '2021-02-20'),

('Mohit Kumar', 'mohit.kumar@email.com', 'M', 24, 'MCA', 41000.00, '2020-09-09'),
('Anjali Mishra', 'anjali.mishra@email.com', 'F', 19, 'BCA', 37000.00, '2022-05-12'),
('Vivek Sinha', 'vivek.sinha@email.com', 'M', 22, 'BSc IT', 43000.00, '2019-06-28'),
('Radhika Pandit', 'radhika.pandit@email.com', 'F', 21, 'MBA', 39000.00, '2021-10-05'),
('Harish Kumar', 'harish.kumar@email.com', 'M', 25, 'BCom', 45000.00, '2020-12-15'),

('Akash k', 'AkashK@email.com', 'F', 20, 'BCA', 35000.00, '2022-01-30'),
('Rajesh Yadav', 'rajesh.yadav@email.com', 'M', 23, 'MCA', 42000.00, '2019-09-11'),
('Deeraj naik', 'Deerajnaik@email.com', 'F', 22, 'BSc IT', 38000.00, '2021-03-08'),
('Gaurav Malhotra', 'gaurav.malhotra@email.com', 'M', 24, 'MBA', 44000.00, '2018-05-19'),
('Monika Bansal', 'monika.bansal@email.com', 'F', 21, 'BCom', 36000.00, '2022-02-17');

select * from students where Gender='M';
select * from students where Course in ('MCA','BCA');
select * from students where Course not in ('BSc IT','BCom');

select * from students where Gender is null;                         
select * from students where Gender is not null;

select * from students where FullName like '%k';
select * from students where FullName like '_a%';

select FullName,Age from students;

select * from students where  age between 20 and 23;        
select * from students where  age not between 20 and 23; 

select FullName as Emp_Name,Email,Age from students;
select FullName as Emp_Name,Email Email_Id,Age from students;

select * from students order by Age desc ;                                         
select * from students order by Age Asc ;   

