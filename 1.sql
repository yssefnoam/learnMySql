drop database company; -- delete database with name company if exist. ==> this line code for devlopment 

create database company; -- create a database with name company

use company; -- enter to company database to configure

-- create table in database company
create table employee( -- table name employee
	empid int primary key, -- employee id ; type int ; this primary key is unique must not duplicated
	firstName varchar(25) not null, -- firstname of the employee; type string(varchar); max charactees 25, required to fill
	lastName varchar(25) not null,   -- lastname of the employee; type string(varchar); max charactees 25, required to fill
	salary DECIMAL(5,2)check(salary>100), -- check if the person have greather than 100$ in salary; type float; #####.##
	dep varchar(40) DEFAULT "software engineering" -- the skills of the employee; type string(varchar); the default is "se" if the user not type any thing
);

describe employee; -- show the the structure of the employee table

insert into employee( -- insert employee 1 in the employee table 
	empid,
	firstName,
	lastName,
	salary,
	dep
	)
	values (
	1,
	"youssef",
	"noam",
	100.22,
	"math"
);

insert into employee( -- insert employee 2 in the employee table 
	empid,
	firstName,
	lastName,
	salary
	)
	values (
	2,
	"yassir",
	"noam",
	100
);

insert into employee( empid, firstName, lastName, salary, dep) values ( 3, "yassin", "noam", 200, "phisi");

insert into employee( empid, firstName, lastName, salary, dep) values ( 4, "hamza", "noam", 400, "sodo");

select * from employee; -- show the the content of the employee table


