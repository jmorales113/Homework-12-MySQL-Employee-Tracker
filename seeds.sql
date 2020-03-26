INSERT INTO department (name)
VALUES ("Sales"),
("Sales"),
("Engineering"),
("Engineering"),
("Finance"),
("Legal"),
("Legal"),
("Engineering");

SELECT employee.id, employee.first_name, employee.last_name, role.title, department.name AS department, role.salary, employee.manager_id AS manager 
FROM employees_db.employee
LEFT JOIN employees_db.role
On employee.role_id = role.id
LEFT JOIN employees_db.department
ON role.department_id = department.id;




