create database X_WORKZ;
USE X_WORKZ;
create table product_info(
id int,
productName varchar(20),
 productType varchar(20), 
 description varchar(30),
 price int,
 qunatity int,
 brand varchar(15),
 rating float,
  mfgDate date,
 expiryDate date
 );
 desc product_info;
 create table patient_info(
id int,
patientName varchar(20),
 patientAge int, 
 diseas varchar(30),
 assistingDoctor varchar(15),
 patientNumber bigint,
 patientDob date,
 patientAddress varchar(30),
 patientBloodGroup varchar(10),
 patientVisitDate date
 );
 desc patient_info;
 
 
 ALTER table patient_info ADD COLUMN gender varchar(6);
 ALTER table patient_info ADD COLUMN bedNo int;
 
ALTER table patient_info Drop COLUMN gender ;
ALTER table patient_info drop COLUMN bedNo ;
ALTER table patient_info Drop COLUMN patientBloodGroup ;
ALTER table patient_info drop COLUMN patientVisitDate ;

ALTER table patient_info modify COLUMN patientDob varchar(10) ;
ALTER table patient_info modify COLUMN patientDob  date ;
ALTER table patient_info rename COLUMN patientDob  to DateOfBirth;
ALTER table patient_info rename COLUMN patientNumber to PhoneNumber;


insert into patient_info value(1,'ramesh',26,fever,'Dr.Rakesh',1234567890,2025-09-20,'banglore');
insert into patient_info value(2,'praakash',26,,'Dr.Rakesh',1234567890,2025-09-20,'banglore');
insert into patient_info value(3,'rakesh',26,fever,'Dr.Rakesh',1234567890,2025-09-20,'banglore');
insert into patient_info value(4,'paramesh',26,fever,'Dr.Rakesh',1234567890,2025-09-20,'banglore');
insert into patient_info value(5,'suresh',26,fever,'Dr.Rakesh',1234567890,2025-09-20,'banglore');





 
 
 

