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



-- Active: 1691582793511@@127.0.0.1@5432@test@public
CREATE TABLE "user"(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE,
    email VARCHAR(255) UNIQUE,
    age int DEFAULT 18
  
);

DROP Table "user5";

-- alter table 
--  add a column, drop a column, change datatype of a column,
-- rename a column, set default value for a column,
-- add constraints to a column, dorp CONSTRAINTS, table RENAMe information_schema


insert into "user" values(1, 'abc', 'abc@gmail.com');
insert into "user" values(2 ,'sifat', 'sifat@gmail.com');

-- add a column 
ALTER TABLE "user"
-- ADD + COLUMN + column name+ data type + constraints
ADD COLUMN password VARCHAR(255) DEFAULT 'admin123'  not NULL;

-- drop column 
alter TABLE "user"
drop COLUMN age ;

-- # change datatype of a column
alter TABLE "user" 
    add COLUMN demo int;

alter table "user"
    alter COLUMN demo type TEXT;

-- # add default value
alter table "user"
    alter COLUMN demo set DEFAULT 'Bangladesh';

-- # drop DEFAULT value 
alter table "user"
    alter COLUMN demo drop DEFAULT;

-- insert into "user" values(4, 'sifat4', 'sifat4@gmail.com');
insert into "user" values(5 ,'sifat5', 'sifat5@gmail.com');


-- # rename a column 
alter TABLE "user"
    RENAME COLUMN demo to country;

-- how to add constraints  
alter TABLE "user"
alter COLUMN country set not null;

alter table "user"
    add CONSTRAINT unique_email UNIQUE(email);


-- drop constraints  
alter TABLE "user"
alter COLUMN country drop null;
alter table "user"
    DROP CONSTRAINT unique_email;

    -- delete all rows 
    TRUNCATE table "user";
SELECT * from "user";
