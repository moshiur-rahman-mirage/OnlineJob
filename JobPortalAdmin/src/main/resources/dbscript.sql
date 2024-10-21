create database JobPortal;

create table job(id int IDENTITY(1,1) PRIMARY KEY,title varchar(200),description varchar(200),category varchar(200),status varchar(200),location varchar(200),pdate varchar(200))

create table role(id int IDENTITY(1,1) PRIMARY KEY, name varchar(200),email varchar(200),password varchar(200),qualification varchar(200),role varchar(200))

