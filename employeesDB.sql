CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE department(
id INTEGER AUTO_INCREMENT NOT NULL,
name VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE role (
id INTEGER AUTO_INCREMENT NOT NULL,
title VARCHAR(30) NOT NULL,
salary DECIMAL unsigned NOT NULL,
department_id INTEGER NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (department_id) REFERENCES department (id)
);

CREATE TABLE employee (
id INTEGER AUTO_INCREMENT NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INTEGER NOT NULL,
manager_id INTEGER DEFAULT NULL,
PRIMARY KEY (id),
FOREIGN KEY (role_id) REFERENCES role (id),
FOREIGN KEY (manager_id) REFERENCES role (id)
);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;




