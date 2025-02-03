create database Library


drop database Library


use Library

create table Authors (
AuthorID int primary key identity,
FirstName varchar(25) not null,
LastName varchar(25) not null,
DOB varchar (25) not null
);

create table Books (
BookID int primary key identity,
Title varchar (40) not null,
Genre varchar (25) not null,
IsFiction bit not null,
AuthorID int not null,
foreign key (AuthorID) references Authors(AuthorID)
);

create table Borrowers (
BorrowerID int primary key identity,
FirstName varchar(25) not null,
LastName varchar(25) not null,
DOB varchar (25)
);

create table BorrowedBooks (
BookID int not null,
BorrowerID int not null,
DueDate varchar(25) not null,
TransactionDate varchar(25) not null,
primary key (BookID, BorrowerID),
foreign key (BookID) references Books(BookID),
foreign key (BorrowerID) references Borrowers(BorrowerID)
);



create procedure InsertNewBook
    @Genre varchar(25),
    @IsFiction bit,
    @Title varchar(40)
as
begin
    insert into Books (Genre, IsFiction, Title)
    values (@Genre, @IsFiction, @Title);
end;





