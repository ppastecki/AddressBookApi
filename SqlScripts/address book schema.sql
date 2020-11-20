use master
go

if DB_ID('AddressBook') is not null
drop database AddressBook
go

create database AddressBook
go

use AddressBook
go

create table dbo.Country
(
	CountryId int identity,
	Name nvarchar(50) not null,
	ModifiedDate datetime not null,
	constraint PK_Country primary key (CountryId),
	constraint UQ_Country unique (Name)
)

create table dbo.Person
(
	PersonId int identity,
	FirstName nvarchar(50) not null,
	LastName nvarchar(50) not null,
	ModifiedDate datetime not null,
	constraint PK_Person primary key (PersonId)
)

create table dbo.Address
(
	AddressId int identity,
	PersonId int not null,
	AddressLine1 nvarchar(60) not null,
	AddressLine2 nvarchar(60),
	City nvarchar(30) not null,
	PostalCode nvarchar(15) not null,
	CountryId int not null,
	ModifiedDate datetime not null,
	constraint PK_Address primary key (AddressId),
	constraint FK_Address_Person foreign key (PersonId) references dbo.Person(PersonId),
	constraint FK_Address_Country foreign key (CountryId) references dbo.Country(CountryId)
)

create table dbo.Phone
(
	PhoneId int identity,
	PersonId int not null,
	PhoneNumber nvarchar(50) not null,
	ModifiedDate datetime not null,
	constraint PK_Phone primary key (PhoneId),
	constraint FK_Phone_Person foreign key (PersonId) references dbo.Person(PersonId),
)

create table dbo.EmailAddress
(
	EmailAddressId int identity,
	PersonId int not null,
	EmailAddress nvarchar(254),
	ModifiedDate datetime not null,
	constraint PK_EmailAddress primary key (EmailAddressId),
	constraint FK_EmailAddress_Person foreign key (PersonId) references dbo.Person(PersonId),
)
