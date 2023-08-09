-- Active: 1691479994834@@127.0.0.1@5432@test1
--# create DATABASE
-- CREATE DATABASE db1

-- # RENAME DATABASE
-- ALTER DATABASE db1 RENAME TO db2

-- # DELETE DATABASE
-- DROP DATABASE db1

-- # CREATE a student table 
-- CREATE TABLE student (
--     student_id INT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     cgpa NUMERIC(1, 2)
-- )

-- ## update a table name
-- ALTER TABLE student RENAME TO learners;

-- ## delate a table 
-- DROP TABLE learners

-- ## create a table with CONSTRAINTS
-- CREATE TABLE "user"(
--     user_id SERIAL PRIMARY KEY,
--     username VARCHAR(255) UNIQUE,
--     email VARCHAR(255) UNIQUE

-- )
-- -- ## table with multiple CONSTRAINTS
-- CREATE TABLE "user2"(
--     user_id SERIAL PRIMARY KEY,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL

-- )

--## table with composite key 
-- CREATE TABLE "user4"(
--     user_id SERIAL,
--     username VARCHAR(255) UNIQUE,
--     email VARCHAR(255) UNIQUE,
--     PRIMARY KEY(user_id, username),
--     -- unique combining two
--     UNIQUE(username, email)
-- )


--## table with default value
-- CREATE TABLE "user5"(
--     user_id SERIAL PRIMARY KEY,
--     username VARCHAR(255) UNIQUE,
--     email VARCHAR(255) UNIQUE,
--     age int DEFAULT 18
  
-- );

insert into user5 values(1, 'abc', 'abc@gmail.com');
insert into user5 values(2 ,'sifat', 'sifat@gmail.com');

-- we can create table one time 
-- for updating table we use ALTER
select * from user5;