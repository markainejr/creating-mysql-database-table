Create database Myschool;
show databases;
use Myschool;
create table subjectTable(
Subject_ID varchar(12) primary key ,
No_of_Subjects int not null,
Subject_Date date Not Null,
Price_Per_Subject int Not Null,
Student_ID varchar (12) Not null,
Combination_ID varchar(12)Not Null
);
select * from subjectTable;
insert into subjectTable(Subject_ID,No_of_Subjects,Subject_Date,Price_Per_Subject,Student_ID,Combination_ID)
values
('T1120','2','20-11-12','200','S6045','C1100'),
('T1121','3','21-11-12','400','S6042','C1101'),
('T1122','3','22-11-12','450','S6041','C1102'),
('T1123','2','23-11-12','120','S6043','C1203'),
('T1124','2','24-11-12','250','S6044','C1104'),
('T1125','3','25-11-12','800','S6040','C1105');
alter table subjectTable
modify column Student_ID varchar(12) Primary key;
 
create table StudentsTable(
Student_ID varchar(12) Not Null,
Student_Name varchar(20) Not Null,
Gender varchar(1) Not Null,
Contact_Code Varchar (5) Not null,
Student_Location Varchar(10) Not null

);
select * from StudentsTable;
insert into StudentsTable(Student_ID, Student_Name, Gender, Contact_Code, Student_Location)
values
('S6040','Tendo','M','+254','Masaka'),
('S6041','Tim','M','+255','Soroti'),
('S6042','Alex','F','+041','Tororo'),
('S6043','Titus','F','+045','Mbarara'),
('S6044','Teddy','F','+031','Arua'),
('S6045','Theo','M','+070','Kitgum');

SELECT StudentsTable.Student_ID, StudentsTable.Student_Name, subjectTable.No_of_Subjects
FROM 
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
from StudentsTable

