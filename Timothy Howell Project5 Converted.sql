--Timothy L Howell Project 5

--Creates the Database after removing one that may already exist
IF DB_ID('projectFiveTimothyHowell') IS NOT NULL
	DROP DATABASE projectFiveTimothyHowell
go

CREATE DATABASE projectFiveTimothyHowell
go
USE projectFiveTimothyHowell;
go

--Creates the table for the portfolio contact page with contactID auto incrementing and as the primary key
CREATE TABLE portfolioContact (
	contactID	INT	NOT NULL IDENTITY,
	contactName	VARCHAR(45) NOT NULL,
	contactEmail	VARCHAR(255) NOT NULL,
	contactComment	VARCHAR(3000) NOT NULL,
	PRIMARY KEY (contactID)
);

--Populates portfolioContact with 20 rows of test data
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 1', 'Example1@example.com', 'Testing comment for project two number 1');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Abc 123', 'TwoExample@example.com', 'Testing comment for project two number 2 test');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('123 Test', 'ExampleThree@example.com', 'Testing comment for project two number 3 testing test');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('321 Cba', 'Test@email.com', 'Testing comment for project two number 4 Four');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Zyx 098', 'Zyx@example.com', 'Testing comment for project two number 5 hello');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('789 Wxyz', 'Example6@example.com', 'Testing comment for project two number 6 goodbye');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 7', 'Example7@example.com', 'Testing comment for project two number 7 seven Seven');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 8', 'Example8@example.com', 'Testing comment for project two number 8 great');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 9', 'Example9@example.com', 'Testing comment for project two number 9 fine');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('10 Test', 'Example10@example.com', 'Testing comment for project two number 10 again');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 11', 'Example11@example.com', 'Testing comment for project two number 11 more than half');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 12', 'Example12@example.com', 'Testing comment for project two number 12 read');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 13', 'Example13@example.com', 'Testing comment for project two number 13 write');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 14', 'Example14@example.com', 'Testing comment for project two number 14 a test');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 15', 'Example15@example.com', 'Testing comment for project two number 15 bad');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 16', 'Example16@example.com', 'Testing comment for project two number 16 good');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 17', 'Example17@example.com', 'Testing comment for project two number 17 not much longer');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 18', 'Example18@example.com', 'Testing comment for project two number 18 getting close');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 19', 'Example19@example.com', 'Testing comment for project two number 19 almost done');
INSERT INTO portfolioContact
	(contactName, contactEmail, contactComment)
VALUES
	('Test 20', 'Example20@example.com', 'Testing comment for project two number 20 plenty');


--Creates the table for the list of the business' employees
CREATE TABLE employeesList(
	employeeID	INT	NOT NULL IDENTITY,
	employeeName	VARCHAR(45)	NOT NULL,
	employeeRole	VARCHAR(45)	NOT NULL,
	PRIMARY KEY (employeeID)
);

--Populates employeesList with 20 rows of test data
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Joe', 'Job 1');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Jim', 'Job 2');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('John', 'Job 3');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Jon', 'Job 4');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Jeb', 'Job 1');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Jill', 'Job 2');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Jane', 'Job 3');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Test', 'Job 4');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Dave', 'Job 1');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Don', 'Job 2');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Dub', 'Job 3');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Deb', 'Job 4');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Sandy', 'Job 1');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Jeff', 'Job 2');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Rob', 'Job 3');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Bob', 'Job 4');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Job', 'Job 1');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Wob', 'Job 2');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Aob', 'Job 3');
INSERT INTO employeesList
	(employeeName, employeeRole)
VALUES
	('Lob', 'Job 4');


--Creates the table for the business contact page set businessContactID auto incrementing as the primary key
CREATE TABLE businessContact (
	businessContactID	INT	NOT NULL IDENTITY,
	businessContactReason	VARCHAR(50)	NOT NULL,
	businessContactName	VARCHAR(45)	NOT NULL,
	businessContactEmail	VARCHAR(255)	NOT NULL,
	businessContactPhone	VARCHAR(20)	NOT NULL,
	businessContactComment	VARCHAR(3000)	NOT NULL,
	employeeID		INT		NOT NULL
				REFERENCES employeesList (employeeID),
	PRIMARY KEY (businessContactID)
);

--Populates businessContact with 20 rows of test data
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 1', 'Example1@example.com', '555-555-0001', 'Business testing message 1', 20);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Question', 'Test 2', 'Example2@example.com', '555-555-0002', 'Business testing message 2?', 19);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Complaint', 'Test 3', 'Example3@example.com', '555-555-0003', 'Business testing message 3!', 18);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Special Request', 'Test 4', 'Example4@example.com', '555-555-0004', 'Business testing message 4 please', 17);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 5', 'Example5@example.com', '555-555-0005', 'Business testing message 5', 16);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 6', 'Example6@example.com', '555-555-0006', 'Business testing message 6', 15);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 7', 'Example7@example.com', '555-555-0007', 'Business testing message 7', 14);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 8', 'Example8@example.com', '555-555-0008', 'Business testing message 8', 13);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 9', 'Example9@example.com', '555-555-0009', 'Business testing message 9', 12);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 10', 'Example10@example.com', '555-555-0010', 'Business testing message 10', 11);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 11', 'Example11@example.com', '555-555-0011', 'Business testing message 11', 10);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 12', 'Example12@example.com', '555-555-0012', 'Business testing message 12', 9);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 13', 'Example13@example.com', '555-555-0013', 'Business testing message 13', 8);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 14', 'Example14@example.com', '555-555-0014', 'Business testing message 14', 7);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 15', 'Example15@example.com', '555-555-0015', 'Business testing message 15', 6);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 16', 'Example16@example.com', '555-555-0016', 'Business testing message 16', 5);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 17', 'Example17@example.com', '555-555-0017', 'Business testing message 17', 4);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 18', 'Example18@example.com', '555-555-0018', 'Business testing message 18', 3);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 19', 'Example19@example.com', '555-555-0019', 'Business testing message 19', 2);
INSERT INTO businessContact
	(businessContactReason, businessContactName, businessContactEmail, businesscontactPhone, businessContactComment, employeeID)
VALUES
	('Comment', 'Test 20', 'Example20@example.com', '555-555-0020', 'Business testing message 20', 1);



--Creates the table for the business newsletter page with newsletterID auto incrementing and as primary key
CREATE TABLE newsletterContact (
	newsletterID	INT	NOT NULL IDENTITY,
	newsletterFirstName	VARCHAR(45)	NOT NULL,
	newsletterLastName	VARCHAR(45)	NOT NULL,
	newsletterEmail		VARCHAR(255)	NOT NULL,
	PRIMARY KEY (newsletterID)
);

--Populates newsletterContact with 20 rows of test data
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test1', 'One', 'Example1@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test2', 'Two', 'Example2@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test3', 'Three', 'Example3@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test4', 'Four', 'Example4@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test5', 'Five', 'Example5@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test6', 'Six', 'Example6@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test7', 'Seven', 'Example7@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test8', 'Eight', 'Example8@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test9', 'Nine', 'Example9@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test10', 'Ten', 'Example10@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test11', 'Eleven', 'Example11@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test12', 'Twelve', 'Example12@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test13', 'Thirteen', 'Example13@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test14', 'Fourteen', 'Example14@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test15', 'Fifteen', 'Example15@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test16', 'Sixteen', 'Example16@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test17', 'Seventeen', 'Example17@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test18', 'Eighteen', 'Example18@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test19', 'Nineteen', 'Example19@example.com');
INSERT INTO newsletterContact
	(newsletterFirstName, newsletterLastName, newsletterEmail)
VALUES
	('Test20', 'Twenty', 'Example20@example.com');