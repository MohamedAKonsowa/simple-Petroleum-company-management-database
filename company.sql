create database if not exists company ;
use company;


Create table if not exists Employee(
EmployeeID int primary key,
fristname varchar(20) not null,
lastname  varchar(20) not null,
Gender varchar(6) not null,
SNN int unique not null,
Address varchar(150) not null,
Birthdate date not null
);


INSERT IGNORE INTO Employee (EmployeeID, fristname, lastname, Gender, SNN, Address, Birthdate)
VALUES
(1,'ahmed','mohamed','male',10001,'alamein university','29-12-04'),
(2,'hussein','ahmed','male',10002,'alamein university','2-12-04'),
(3,'ahmed','abdullah','male',10003,'alamein university','9-1-04'),
(4,'mohamed','ibrahim','male',10004,'alamein university','10-2-04'),
(5,'youssra','mohamed','female',10005,'alamein university','2-10-04'),
(6,'nermin','essam','female',10006,'alamein university','15-9-04'),
(7, 'William', 'Taylor', 'Male', 10007, '456 Oak St', '1993-08-30'),
(8, 'Sophia', 'Anderson', 'Female', 10008, '789 Pine St', '1990-02-14'),
(9, 'Matthew', 'Martinez', 'Male', 10009, '321 Elm St', '1994-07-27'),
(10, 'Ava', 'Hernandez', 'Female', 10010, '654 Main St', '1992-01-10'),
(11, 'Jacob', 'Garcia', 'Male', 10011, '987 Cedar St', '1991-03-23'),
(12, 'Isabella', 'Lopez', 'Female', 10012, '123 Oak St', '1989-06-06'),
(13, 'Ethan', 'Wilson', 'Male', 10013, '456 Pine St', '1993-10-19'),
(14, 'Mia', 'Lee', 'Female', 10014, '789 Elm St', '1990-04-01'),
(15, 'Alexander', 'Clark', 'Male', 10015, '321 Main St', '1995-07-14'),
(16, 'Olivia', 'Hall', 'Female', 10016, '654 Cedar St', '1992-11-27'),
(17, 'James', 'Young', 'Male', 10017, '987 Oak St', '1991-05-10'),
(18, 'Sofia', 'Walker', 'Female', 10018, '123 Pine St', '1994-09-23'),
(19, 'Logan', 'Harris', 'Male', 10019, '456 Elm St', '1993-01-06'),
(20, 'Charlotte', 'Gonzalez', 'Female', 10020, '789 Main St', '1990-03-20'),
(21, 'Benjamin', 'Allen', 'Male', 10021, '321 Oak St', '1995-06-02'),
(22, 'Amelia', 'Perez', 'Female', 10022, '654 Pine St', '1989-09-15'),
(23, 'Mila', 'Parker', 'Female', 10023, '789 Cedar St', '1990-07-29'),
(24, 'Emma', 'Turner', 'Female', 10024, '123 Elm St', '1994-12-28'),
(25, 'Henry', 'Baker', 'Male', 10025, '456 Main St', '1991-04-10'),
(26, 'Grace', 'Hill', 'Female', 10026, '789 Cedar St', '1990-08-23'),
(27, 'Sebastian', 'Ward', 'Male', 10027, '321 Oak St', '1995-01-05'),
(28, 'Scarlett', 'Price', 'Female', 10028, '654 Pine St', '1992-03-18'),
(29, 'Jack', 'Foster', 'Male', 10029, '987 Elm St', '1994-06-30'),
(30, 'Lily', 'Brooks', 'Female', 10030, '123 Main St', '1990-11-12'),
(31, 'Owen', 'Kelly', 'Male', 10031, '456 Elm St', '1993-02-25'),
(32, 'Victoria', 'Coleman', 'Female', 10032, '789 Oak St', '1989-07-08'),
(33, 'Gabriel', 'Gomez', 'Male', 10033, '321 Pine St', '1995-10-21'),
(34, 'Nora', 'Simmons', 'Female', 10034, '654 Cedar St', '1991-02-03'),
(35, 'Carter', 'Hughes', 'Male', 10035, '987 Oak St', '1990-05-16'),
(36, 'Hazel', 'Rivera', 'Female', 10036, '123 Pine St', '1994-08-29'),
(37, 'Daniel', 'Ward', 'Male', 10037, '456 Elm St', '1993-12-11'),
(38, 'Luna', 'Reed', 'Female', 10038, '789 Main St', '1990-03-25'),
(39, 'Max', 'Cooper', 'Male', 10039, '321 Oak St', '1995-06-07'),
(40, 'Stella', 'Ross', 'Female', 10040, '654 Pine St', '1989-09-20'),
(41, 'Elijah', 'Barnes', 'Male', 10041, '123 Elm St', '1994-12-03'),
(42, 'Avery', 'Wood', 'Female', 10042, '456 Main St', '1991-03-16');


CREATE TABLE IF NOT EXISTS Accountant (
    EmployeeID INT PRIMARY KEY,
    Certification VARCHAR(100),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID) ON DELETE CASCADE
);
INSERT IGNORE INTO Accountant (EmployeeID, Certification)
VALUES (1, 'Certification1'),
       (37, 'Certification2'),
       (36, 'Certification3'),
       (35, 'Certification4'),
       (34, 'Certification5'),
       (33, 'Certification6');



create table if not exists Employee_Salary(
EmployeeID int primary key,
AccountantID int,
salary float,
foreign key(EmployeeID) references Employee(EmployeeID) ON DELETE CASCADE,
foreign key(AccountantID) references Accountant(EmployeeID) ON DELETE SET NULL
);


INSERT IGNORE INTO Employee_Salary (EmployeeID, AccountantID, salary)
VALUES
(1, 1, 5000.00),
(2, 37, 6000.00),
(3, 36, 5500.00),
(4, 35, 5200.00),
(5, 34, 4800.00),
(6, 33, 5100.00),
(7, 1, 5200.00),
(8, 37, 5500.00),
(9, 36, 5300.00),
(10, 35, 5800.00),
(11, 34, 5200.00),
(12, 33, 5000.00),
(13, 1, 5400.00),
(14, 37, 5200.00),
(15, 36, 5100.00),
(16, 35, 5500.00),
(17, 34, 5600.00),
(18, 33, 5300.00),
(19, 1, 5800.00),
(21, 36, 5200.00),
(22, 35, 5300.00),
(23, 34, 5400.00),
(24, 33, 5500.00),
(25, 1, 5200.00),
(26, 37, 4800.00),
(27, 36, 5100.00),
(28, 35, 5200.00),
(29, 34, 5000.00),
(30, 33, 5300.00),
(31, 1, 5200.00),
(32, 1, 5500.00),
(33, 1, 5300.00),
(34, 1, 5800.00),
(35, 1, 5200.00),
(36, 1, 5000.00),
(37, 1, 5400.00),
(38, 37, 5200.00),
(39, 36, 5100.00),
(40, 35, 5500.00),
(41, 34, 5600.00),
(42, 33, 5300.00);


create table if not exists HR (
EmployeeID INT primary key,
foreign key(EmployeeID) references Employee(EmployeeID) ON DELETE CASCADE
);
INSERT IGNORE INTO HR (EmployeeID)
VALUES (2),(38),(39),(40),(41),(42);

create table if not exists HiredEmployee(
EmployeeID int primary key,
HireDate date not null,
HR_hiredby_ID int ,
foreign key(EmployeeID) references Employee(EmployeeID) ON DELETE CASCADE,
foreign key(HR_hiredby_ID) references HR(EmployeeID) ON DELETE SET NULL
);
INSERT IGNORE INTO HiredEmployee (EmployeeID, HireDate, HR_hiredby_ID)
VALUES
(1, '2023-01-01', 2),
(2, '2023-01-02', 2),
(3, '2023-01-03', 39),
(4, '2023-01-04', 40),
(5, '2023-01-05', 41),
(6, '2023-01-06', 42),
(7, '2023-01-07', 2),
(8, '2023-01-08', 38),
(9, '2023-01-09', 39),
(10, '2023-01-10', 40),
(11, '2023-01-11', 41),
(12, '2023-01-12', 42),
(13, '2023-01-13', 2),
(14, '2023-01-14', 38),
(15, '2023-01-15', 39),
(16, '2023-01-16', 40),
(17, '2023-01-17', 41),
(18, '2023-01-18', 42),
(19, '2023-01-19', 2),
(20, '2023-01-20', 38),
(21, '2023-01-21', 39),
(22, '2023-01-22', 40),
(23, '2023-01-23', 41),
(24, '2023-01-24', 42),
(25, '2023-01-25', 2),
(26, '2023-01-26', 38),
(27, '2023-01-27', 39),
(28, '2023-01-28', 40),
(29, '2023-01-29', 41),
(30, '2023-01-30', 42),
(31, '2023-01-31', 2),
(32, '2023-02-01', 38),
(33, '2023-02-02', 39),
(34, '2023-02-03', 40),
(35, '2023-02-04', 41),
(36, '2023-02-05', 42),
(37, '2023-02-06', 2),
(38, '2023-02-07', 2),
(39, '2023-02-08', 2),
(40, '2023-02-09', 2),
(41, '2023-02-10', 2),
(42, '2023-02-11', 2);


create table if not exists Department (
Departmentno int primary key,
Dapartmentname varchar(30) not null,
Manger_ID int,
foreign key(Manger_ID) references Employee(EmployeeID) ON DELETE SET NULL
);
INSERT IGNORE INTO Department (Departmentno, Dapartmentname, Manger_ID)
VALUES
(101, 'Financial', 1),
(201, 'Production', 3),
(301, 'HR', 2),
(401, 'Legal Affairs', 7),
(501, 'Maintenance', 5),
(601, 'Laboratory', 6),
(701, 'Security', 4);

create table if not exists Employee_postion (
EmployeeID int primary key,
Position varchar(30) not null,
Department_no int,
foreign key(EmployeeID) references Employee(EmployeeID) ON DELETE CASCADE,
foreign key(Department_no) references Department(Departmentno) ON DELETE SET NULL
);
INSERT IGNORE INTO employee_postion (EmployeeID, Position, Department_no)
VALUES
-- Head of Financial Department
(1, 'Financial Department Head', 101),
-- Head of HR Department
(2, 'HR Department Head', 301),
-- Head of Production Department
(3, 'Production Department Head', 201),
-- Head of Security Department
(4, 'Security Department Head', 701),
-- Head of Maintenance Department
(5, 'Maintenance Department Head', 501),
-- Head of Laboratory Department
(6, 'Laboratory Department Head', 601),
-- Head of Legal Affairs Department
(7, 'Legal Affairs Department Head', 401),
-- HR Employees in HR Department
(38, 'HR', 301),
(39, 'HR', 301),
(40, 'HR', 301),
(41, 'HR', 301),
(42, 'HR', 301),
-- Accountants in Financial Department
(37, 'Accountant', 101),
(36, 'Accountant', 101),
(35, 'Accountant', 101),
(34, 'Accountant', 101),
(33, 'Accountant', 101),
-- Engineers in Production Department
(32, 'Engineer', 201),
(31, 'Engineer', 201),
(30, 'Engineer', 201),
(29, 'Engineer', 201),
(28, 'Engineer', 201),
-- Security Workers in Security Department
(27, 'Security Worker', 701),
(26, 'Security Worker', 701),
(25, 'Security Worker', 701),
(24, 'Security Worker', 701),
(23, 'Security Worker', 701),
-- Workers in Maintenance Department
(22, 'Worker', 501),
(21, 'Worker', 501),
(20, 'Worker', 501),
(19, 'Worker', 501),
(18, 'Worker', 501),
-- Lawyers in Legal Affairs Department
(12, 'Lawyer', 401),
(11, 'Lawyer', 401),
(10, 'Lawyer', 401),
(9, 'Lawyer', 401),
(8, 'Lawyer', 401),
-- Lab Technicians in Laboratory Department
(17, 'Lab Technician', 601),
(16, 'Lab Technician', 601),
(15, 'Lab Technician', 601),
(14, 'Lab Technician', 601),
(13, 'Lab Technician', 601);

create table if not exists Contact_information(
EmployeeID int not null,
Contact_information varchar(200),
primary key(EmployeeID  ,Contact_information ),
foreign key(EmployeeID) references Employee(EmployeeID) ON DELETE CASCADE
);
INSERT IGNORE INTO Contact_information (EmployeeID, Contact_information)
VALUES
-- Employees with 3 contact information entries
(1, 'employee1@example.com'),
(1, '123-456-7890'),
(1, '123 Main St'),
(2, 'employee2@example.com'),
(2, '456-789-0123'),
(2, '456 Elm St'),
(3, 'employee3@example.com'),
(3, '789-012-3456'),
(3, '789 Oak Ave'),
-- Employees with 2 contact information entries
(4, 'employee4@example.com'),
(4, '234-567-8901'),
(5, 'employee5@example.com'),
(5, '567-890-1234'),
(6, 'employee6@example.com'),
(6, '890-123-4567'),
-- Employees with 1 contact information entry
(7, 'employee7@example.com'),
(8, 'employee8@example.com'),
(9, 'employee9@example.com'),
(10, 'employee10@example.com'),
(11, 'employee11@example.com'),
(12, 'employee12@example.com'),
(13, 'employee13@example.com'),
(14, 'employee14@example.com'),
(15, 'employee15@example.com'),
(16, 'employee16@example.com'),
(17, 'employee17@example.com'),
(18, 'employee18@example.com'),
(19, 'employee19@example.com'),
(20, 'employee20@example.com'),
(21, 'employee21@example.com'),
(22, 'employee22@example.com'),
(23, 'employee23@example.com'),
(24, 'employee24@example.com'),
(25, 'employee25@example.com'),
(26, 'employee26@example.com'),
(27, 'employee27@example.com'),
(28, 'employee28@example.com'),
(29, 'employee29@example.com'),
(30, 'employee30@example.com'),
(31, 'employee31@example.com'),
(32, 'employee32@example.com'),
(33, 'employee33@example.com'),
(34, 'employee34@example.com'),
(35, 'employee35@example.com'),
(36, 'employee36@example.com'),
(37, 'employee37@example.com'),
(38, 'employee38@example.com'),
(39, 'employee39@example.com'),
(40, 'employee40@example.com'),
(41, 'employee41@example.com'),
(42, 'employee42@example.com');


create table if not exists Dependent (
Dependent int primary key,
Birthdate date not null,
fristname varchar(20) not null,
lastname  varchar(20) not null,
Gender varchar(6) not null,
EmployeeID int not null,
foreign key(EmployeeID) references Employee(EmployeeID) ON DELETE CASCADE
);
INSERT IGNORE INTO Dependent (Dependent, Birthdate, fristname, lastname, Gender, EmployeeID)
VALUES
-- Employees with 3 dependents
(1, '2000-01-01', 'John', 'Doe', 'Male', 1),
(2, '2005-02-03', 'Emily', 'Smith', 'Female', 1),
(3, '2010-06-10', 'Daniel', 'Johnson', 'Male', 1),
(4, '2001-03-15', 'Sophia', 'Anderson', 'Female', 2),
(5, '2007-07-20', 'Oliver', 'Wilson', 'Male', 2),
(6, '2014-09-25', 'Isabella', 'Taylor', 'Female', 2),
-- Employees with 2 dependents
(7, '2002-05-12', 'Mason', 'Brown', 'Male', 3),
(8, '2008-09-18', 'Emma', 'Jones', 'Female', 3),
(9, '2004-11-07', 'Michael', 'Clark', 'Male', 4),
(10, '2011-12-30', 'Ava', 'Martinez', 'Female', 4),
-- Employees with 1 dependent
(11, '2003-08-14', 'William', 'Harris', 'Male', 5),
(12, '2009-10-22', 'Sophie', 'Lee', 'Female', 6);

CREATE TABLE IF NOT EXISTS Engineer (
    EmployeeID INT PRIMARY KEY,
    Specialty VARCHAR(50) not null,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID) ON DELETE CASCADE
);

INSERT IGNORE INTO Engineer (EmployeeID, Specialty) VALUES 
    (3, 'Specialty1'), 
    (32, 'Specialty2'), 
    (31, 'Specialty3'), 
    (30, 'Specialty4'), 
    (29, 'Specialty5'), 
    (28, 'Specialty6');

CREATE TABLE IF NOT EXISTS Security_worker (
    EmployeeID INT PRIMARY KEY,
    SecurityClearanceLevel VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID) ON DELETE CASCADE
);

INSERT IGNORE INTO Security_worker (EmployeeID, SecurityClearanceLevel)
VALUES
    (4, 'Confidential'),
    (27, 'Secret'),
    (26, 'Top Secret'),
    (25, 'Confidential'),
    (24, 'Secret'),
    (23, 'Top Secret');


CREATE TABLE IF NOT EXISTS Worker (
    EmployeeID INT PRIMARY KEY,
    EngineerID INT,
    ConfidenceLevel INT,
    FOREIGN KEY (EngineerID) REFERENCES Engineer(EmployeeID) ON DELETE SET NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID) ON DELETE CASCADE
);
INSERT IGNORE INTO worker (EmployeeID, EngineerID, ConfidenceLevel)
VALUES
    (5, 3, 100),
    (22, 32, 90),
    (21, 31, 75),
    (20, 30, 85),
    (19, 29, 70),
    (18, 28, 95);



create table if not exists Worksite (
SiteID int primary key , 
Address varchar(150) not null,
Responsible_Engineer_ID int, 
foreign key(Responsible_Engineer_ID) references Engineer(EmployeeID) ON DELETE SET NULL
);
INSERT IGNORE INTO Worksite (SiteID, Address, Responsible_Engineer_ID)
VALUES
(1, '123 Main St, City A', 3),
(2, '456 Elm St, City B', 32),
(3, '789 Oak St, City C', 31),
(4, '321 Pine St, City D', 30),
(5, '654 Maple St, City E', 29),
(6, '987 Cedar St, City F', 28);

create table if not exists Worker_Working_inWork_Site (
WorkerID int not null,
siteID int not null,
primary key(WorkerID, siteID),
foreign key(WorkerID) references worker(EmployeeID) ON DELETE CASCADE,
foreign key(siteID) references Worksite(SiteID) ON DELETE CASCADE
);
INSERT IGNORE INTO Worker_Working_inWork_Site (WorkerID, siteID)
VALUES
(5, 1),
(22, 1),
(21, 1),
(20, 1),
(19, 1),
(18, 1);


create table if not exists Security_Securing_Worksite (
SecurityID int not null,
siteID int not null,
primary key(SecurityID, siteID),
foreign key(SecurityID) references Security_worker(EmployeeID) ON DELETE CASCADE,
foreign key(siteID) references Worksite(SiteID) ON DELETE CASCADE
);
INSERT IGNORE INTO Security_Securing_Worksite (SecurityID, siteID)
VALUES
(4, 1),
(27, 1),
(26, 1),
(25, 1),
(24, 1),
(23, 1);


CREATE TABLE IF NOT EXISTS Lawyer (
    EmployeeID INT PRIMARY KEY,
    BarNum VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID) ON DELETE CASCADE
);
INSERT IGNORE INTO Lawyer (EmployeeID, BarNum)
VALUES
    (7, 'BAR123'),
    (12, 'BAR456'),
    (11, 'BAR789'),
    (10, 'BAR012'),
    (9, 'BAR345'),
    (8, 'BAR678');



CREATE TABLE if not exists lab (
  lab_id INT PRIMARY KEY,
  Address VARCHAR(150) NOT NULL,
  LabManger_ID INT
);


CREATE TABLE IF NOT EXISTS Lab_Technicians (
  EmployeeID INT PRIMARY KEY,
  Lab_id INT,
  Specialty VARCHAR(100),
  FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID) ON DELETE CASCADE,
  FOREIGN KEY (Lab_id) REFERENCES lab (lab_id) ON DELETE SET NULL
);


ALTER TABLE lab
ADD FOREIGN KEY (LabManger_ID) REFERENCES Lab_Technicians (EmployeeID) ON DELETE SET NULL;

INSERT IGNORE INTO lab values (1,'alamein university 10',null);
INSERT IGNORE INTO Lab_Technicians (EmployeeID, Lab_id, Specialty)
VALUES
    (6, 1, 'Microbiology'),
    (17, 1, 'Chemistry'),
    (16, 1, 'Pathology'),
    (15, 1, 'Genetics'),
    (14, 1, 'Immunology'),
    (13, 1, 'Hematology');

UPDATE lab
SET LabManger_ID = 6
WHERE lab_id = 1;


create table if not exists Lawyer_Suggestion(
Lawyer_ID int not null,
DepartmentID int not null,
Suggestion varchar(5000),
primary key(Lawyer_ID, DepartmentID),
foreign key(Lawyer_ID) references Lawyer(EmployeeID) ON DELETE CASCADE,
foreign key(DepartmentID) references Department(Departmentno) ON DELETE CASCADE
);
INSERT IGNORE INTO Lawyer_Suggestion (Lawyer_ID, DepartmentID, Suggestion)
VALUES
(8, 101, 'Implement stricter financial regulations.'),
(9, 201, 'Improve production efficiency through automation.'),
(10, 301, 'Enhance employee training and development programs.'),
(11, 401, 'Review and update legal contracts and agreements.'),
(12, 501, 'Increase preventive maintenance for equipment.'),
(7, 601, 'Upgrade laboratory equipment for better research capabilities.');


create table if not exists Contract (
Contract_ID int primary key ,
Contract_Date date not null,
Contract_Details varchar(2000),
Lawyer_ID int ,
foreign key(Lawyer_ID) references Lawyer(EmployeeID) ON DELETE SET NULL
);
INSERT IGNORE INTO Contract (Contract_ID, Contract_Date, Contract_Details, Lawyer_ID)
VALUES
(101, '2023-01-15', 'Supply agreement with ABC Company', 8),
(102, '2023-02-10', 'Service contract with XYZ Corporation', 9),
(103, '2023-03-22', 'Lease agreement for property rental', 10),
(104, '2023-04-05', 'Consulting services contract with DEF Inc.', 11),
(105, '2023-05-18', 'Construction agreement for project A', 12),
(106, '2023-06-30', 'Software licensing contract with GHI Corporation', 7);


create table if not exists contract_reveiw(
Lawyer_ID int ,
Contract_ID int ,
primary key (Lawyer_ID ,Contract_ID),
foreign key(Lawyer_ID) references Lawyer(EmployeeID) ON DELETE CASCADE,
foreign key(Contract_ID) references Contract(Contract_ID) ON DELETE CASCADE
);
INSERT IGNORE INTO contract_reveiw (Lawyer_ID, Contract_ID)
VALUES
(8, 101),
(9, 102),
(10, 103),
(11, 104),
(12, 105),
(7, 106);


create table if not exists Department_location(
Departmentno int,
DepartmentLocation varchar(500),
primary key(Departmentno ,DepartmentLocation),
foreign key(Departmentno) references Department(Departmentno) ON DELETE CASCADE
);
INSERT IGNORE INTO Department_location (Departmentno, DepartmentLocation)
VALUES
(101, 'Location 1A'),
(101, 'Location 1B'),
(101, 'Location 1C'),
(201, 'Location 2A'),
(301, 'Location A1'),
(301, 'Location B1'),
(401, 'Location C1'),
(501, 'Location X'),
(601, 'Location Y'),
(701, 'Location Z');


create table if not exists Employee_Request(
EmployeeID int not null,
RequestID int not null,
requestDetails varchar(2000) not null,
RequestDate date not null,
primary key(EmployeeID,RequestID),
foreign key(EmployeeID) references Employee(EmployeeID) ON DELETE CASCADE
);
INSERT IGNORE INTO Employee_Request (EmployeeID, RequestID, requestDetails, RequestDate) VALUES
-- Employee 12 - 3 requests
(12, 1, 'Request details 1', '2023-05-01'),
(12, 2, 'Request details 2', '2023-05-02'),
(12, 3, 'Request details 3', '2023-05-03'),
-- Employee 17 - 2 requests
(17, 4, 'Request details 4', '2023-05-04'),
(17, 5, 'Request details 5', '2023-05-05'),
-- Employees 22-42 - 1 request each
(22, 6, 'Request details 6', '2023-05-06'),
(27, 7, 'Request details 7', '2023-05-07'),
(32, 8, 'Request details 8', '2023-05-08'),
(37, 9, 'Request details 9', '2023-05-09'),
(42, 10, 'Request details 10', '2023-05-10');


create table if not exists Maintenance_Request(
RequestID int not null, 
EmployeeID int not null,
requestDetails varchar(2000),
Departmentno int,
primary key(RequestID, EmployeeID, Departmentno),
foreign key(EmployeeID) references Employee(EmployeeID) ON DELETE CASCADE,
foreign key(Departmentno) references Department(Departmentno) ON DELETE CASCADE
);
INSERT IGNORE INTO Maintenance_Request (RequestID, EmployeeID, requestDetails, Departmentno) VALUES
(1, 12, 'Request details 1', 501),
(2, 12, 'Request details 2', 501),
(3, 12, 'Request details 3', 501),
(4, 17, 'Request details 4', 501),
(5, 17, 'Request details 5', 501),
(6, 22, 'Request details 6', 501),
(7, 27, 'Request details 7', 501),
(8, 32, 'Request details 8', 501),
(9, 37, 'Request details 9', 501),
(10, 42, 'Request details 10', 501);

create table if not exists Defects_in_Maintenance_Request(
RequestID int not null, 
Defect varchar(500) not null,
primary key(RequestID, Defect),
foreign key(RequestID) references Maintenance_Request(RequestID) ON DELETE CASCADE
);
INSERT IGNORE INTO Defects_in_Maintenance_Request (RequestID, Defect) VALUES
(1, 'Defect 1'),
(2, 'Defect 2'),
(3, 'Defect 3'),
(4, 'Defect 4'),
(5, 'Defect 5'),
(6, 'Defect 6'),
(7, 'Defect 7'),
(8, 'Defect 8'),
(9, 'Defect 9'),
(10, 'Defect 10');


CREATE TABLE IF NOT EXISTS External_Company (
    Company_ID INT PRIMARY KEY,
    Company_name VARCHAR(100),
    Address VARCHAR(100),
    Num VARCHAR(20),
    Email VARCHAR(100),
    Type VARCHAR(50)
);

INSERT IGNORE INTO External_Company (Company_ID, Company_name, Address, Num, Email, Type) VALUES
    (1, 'Company 1', 'Address 1', '123456789', 'company1@example.com', 'Recruitment Agency'),
    (2, 'Company 2', 'Address 2', '987654321', 'company2@example.com', 'Recruitment Agency'),
    (3, 'Company 3', 'Address 3', '567891234', 'company3@example.com', 'Recruitment Agency'),
    (4, 'Company 4', 'Address 4', '321456789', 'company4@example.com', 'Recruitment Agency'),
    (5, 'Company 5', 'Address 5', '678912345', 'company5@example.com', 'Recruitment Agency'),
    (6, 'Company 6', 'Address 6', '234567891', 'company6@example.com', 'Recruitment Agency'),
    (7, 'Company 7', 'Address 7', '789123456', 'company7@example.com', 'Specialized Tool Company'),
    (8, 'Company 8', 'Address 8', '456789123', 'company8@example.com', 'Specialized Tool Company'),
    (9, 'Company 9', 'Address 9', '912345678', 'company9@example.com', 'Specialized Tool Company'),
    (10, 'Company 10', 'Address 10', '345678912', 'company10@example.com', 'Specialized Tool Company'),
    (11, 'Company 11', 'Address 11', '891234567', 'company11@example.com', 'Specialized Tool Company'),
    (12, 'Company 12', 'Address 12', '678912345', 'company12@example.com', 'Specialized Tool Company'),
    (13, 'Company 13', 'Address 13', '123456789', 'company13@example.com', 'Insurance Company'),
    (14, 'Company 14', 'Address 14', '987654321', 'company14@example.com', 'Insurance Company'),
    (15, 'Company 15', 'Address 15', '567891234', 'company15@example.com', 'Insurance Company'),
    (16, 'Company 16', 'Address 16', '321456789', 'company16@example.com', 'Insurance Company'),
    (17, 'Company 17', 'Address 17', '678912345', 'company17@example.com', 'Insurance Company'),
    (18, 'Company 18', 'Address 18', '234567891', 'company18@example.com', 'Insurance Company'),
    (19, 'Company 19', 'Address 19', '789123456', 'company19@example.com', 'Transportation Company'),
    (20, 'Company 20', 'Address 20', '456789123', 'company20@example.com', 'Transportation Company'),
    (21, 'Company 21', 'Address 21', '912345678', 'company21@example.com', 'Transportation Company'),
    (22, 'Company 22', 'Address 22', '345678912', 'company22@example.com', 'Transportation Company'),
    (23, 'Company 23', 'Address 23', '891234567', 'company23@example.com', 'Transportation Company'),
    (24, 'Company 24', 'Address 24', '678912345', 'company24@example.com', 'Transportation Company');




create table if not exists Department_Contacting_External_Company(
Company_ID int not null, 
Departmentno int not null,
primary key(Company_ID, Departmentno),
foreign key(Company_ID) references External_Company(Company_ID) ON DELETE CASCADE, 
foreign key(Departmentno) references Department(Departmentno) ON DELETE CASCADE
);
INSERT IGNORE INTO Department_Contacting_External_Company (Company_ID, Departmentno) VALUES
(1, 301),
(2, 301),
(7, 201),
(8, 201),
(13, 101),
(19, 501);


-- Which Employees have a salary above (Set amount)
SELECT *
FROM Employee
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM Employee_Salary
    WHERE salary > 5200
);

-- Which Employees Work at (Set Location)
SELECT E.*
FROM Employee AS E
JOIN Employee_postion AS EP ON E.EmployeeID = EP.EmployeeID
JOIN Department AS D ON EP.Department_no = D.Departmentno
JOIN Department_location AS DL ON D.Departmentno = DL.Departmentno
WHERE DL.DepartmentLocation = 'Location 1A';

-- Which employees work in department number (enter department number)
SELECT E.*
FROM Employee AS E
JOIN Employee_postion AS EP ON E.EmployeeID = EP.EmployeeID
WHERE EP.Department_no = 101;

-- Which Employees have an age above (enter number)
SELECT *
FROM Employee
WHERE TIMESTAMPDIFF(YEAR, Birthdate, CURDATE()) > 40;

-- Who is the manager of department (enter department number)
SELECT E.EmployeeID, E.fristname, E.lastname
FROM Employee AS E
JOIN Department AS D ON E.EmployeeID = D.Manger_ID
WHERE D.Departmentno = 101;

-- Who are the Insurance Companies that we are in contact with
SELECT EC.*
FROM External_Company AS EC
JOIN Department_Contacting_External_Company AS DCEC ON EC.Company_ID = DCEC.Company_ID
WHERE EC.Type = 'Insurance Company';

-- Which Employees are under (Set Department)
SELECT E.*
FROM Employee AS E
JOIN Employee_postion AS EP ON E.EmployeeID = EP.EmployeeID
JOIN Department AS D ON EP.Department_no = D.Departmentno
WHERE D.Dapartmentname = 'financial';

-- Were there any Maintenance requests during (Set Date) that date only
SELECT *
FROM Employee_Request
WHERE RequestDate = '2023-05-01';

-- Were there any Maintenance requests during (Start Date, End Date)
SELECT *
FROM Employee_Request
WHERE RequestDate BETWEEN '2023-05-01' AND '2023-05-04';

-- Which Employees have Dependents
SELECT DISTINCT E.*
FROM Employee AS E
JOIN Dependent AS D ON E.EmployeeID = D.EmployeeID;

-- Which Employees have less than (set amount) Dependents
SELECT E.*
FROM Employee AS E
LEFT JOIN (
    SELECT EmployeeID, COUNT(*) AS DependentCount
    FROM Dependent
    GROUP BY EmployeeID
) AS D ON E.EmployeeID = D.EmployeeID
WHERE D.DependentCount < 2 OR D.DependentCount IS NULL;

-- Which Employees have more than (set amount) Dependents
SELECT E.*
FROM Employee AS E
JOIN (
    SELECT EmployeeID, COUNT(*) AS DependentCount
    FROM Dependent
    GROUP BY EmployeeID
    HAVING COUNT(*) > 2
) AS D ON E.EmployeeID = D.EmployeeID;

-- Who are the Dependents of (set Employee)
SELECT *
FROM Dependent
WHERE EmployeeID = 1;



