create database myapp;
use myapp;

-- we need 2 tables. First one with login and password and second one with role. Create them
create table user (username varchar(25) PRIMARY KEY not null, password varchar(150) not null, enabled int(1) default 0);
create table user_roles (username varchar(25) PRIMARY KEY not null, role varchar(50) not null);

-- create one test user with encoded password of "2"
insert into user (username, password, enabled) values ("user1", "$2a$10$UFIi9UT1GsBBIPqbJk0wpuQm4bTrPJIZVzwrNEaA5posR6e1mwXk2", 1);
insert into user_roles (username, role) values ("user1", "ROLE_ADMIN");