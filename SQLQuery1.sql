CREATE DATABASE Library;
Use Library;
CREATE TABLE Authors_1(
Id int primary key identity,
Name nvarchar(30),
Surname nvarchar(30)
);

USE Library;
CREATE TABLE Books_1(
Id int primary key identity,
Name nvarchar check(Len(Name)>2 and Len(Name)<100),
AuthorId int,
PageCount int check(PageCount>10)
);

ALTER TABLE Books_1
ADD Author_Id int foreign key references Authors_1(Id);

Create view Library_1
as 
SELECT Id+ ' '+Name+' '+PageCount 
FROM Books_1;
SELECT Name+ ' '+ Surname as Fullname 
FROM Authors_1;

SELECT * FROM Library_1;

