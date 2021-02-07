drop database library;
create database library;

use library;

create table books(
	ISBN char(13) not null primary key,
	Title varchar(70) not null,
	Description varchar(100),
	Category int(11) 
