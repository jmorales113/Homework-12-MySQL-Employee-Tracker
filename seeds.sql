INSERT INTO department (name)
VALUES ("Sales"),
("Engineering"),
("Operations"),
("Legal"),
("Human Resources"),
("Marketing"),
("Accounting"),
("Customer Service");

INSERT INTO role (department_id, title, salary)
VALUES (1, "Sales Manager", 70000),
(2, "Software Engineer", 60000),
(3, "Operations Analyst", 40000),
(4, "Lawyer", 200000),
(1, "HR Manager", 50000),
(6, "Marketing Associate", 55000),
(7, "Accountant", 65000),
(8, "Customer Service Rep", 35000);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Brian", "Meza", 1, NULL),
("Jorge", "Morales", 2, 2),
("Eddie", "Sanchez", 3, 3),
("Fabiola", "Carrion", 4, 4),
("Toby", "Flenderson", 5, NULL),
("Kelly", "Kapoor", 6, 6),
("Creed", "Bratton", 7, 7),
("Meredith", "Palmer", 8, 8);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;

SELECT employee.id, employee.first_name, employee.last_name, role.title, department.name AS department, role.salary, employee.manager_id AS manager 
FROM employees_db.employee
LEFT JOIN employees_db.role
On employee.role_id = role.id
LEFT JOIN employees_db.department
ON role.department_id = department.id;




