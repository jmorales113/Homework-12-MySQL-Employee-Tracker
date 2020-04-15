INSERT INTO department (name)
VALUES ("Sales"),
("Engineering"),
("Operations"),
("Legal"),
("Human Resources"),
("Marketing"),
("Accounting"),
("Customer Service");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Manager", 70000.0, 1 ),
("Software Manager", 60000.0, 2),
('Operations Analyst', 40000.0, 3),
("Lawyer", 200000.0, 4),
("HR Manager", 50000.0, 1),
("Marketing Associate", 55000.0, 6),
("Accountant", 65000.0, 7),
("Customer Server Rep", 35000.0, 8);

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




