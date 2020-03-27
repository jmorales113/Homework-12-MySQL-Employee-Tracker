let mysql = require("mysql");
let inquirer = require("inquirer")
let cTable = require("console.table")

// View all employees, view all employees by Department, view all employees by manager
// Add departments, add roles, add employees
// Update employee roles

let connection = mysql.createConnection({
  host: "localhost",

  // port
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "annixter",
  database: "employees_DB"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  startApp()
//   connection.end();
});

function startApp() {
  inquirer
  .prompt({
    name: "action",
    type: "list",
    message: "What would you like to do?",
    choices: [
      "View All Employees",
      "View All Employees by Department",
      "Add Employee",
      "Add Department",
      "Update Employee Role",
      "Delete Employee",
      "Delete Department",
      "Delete Employee Role"
    ]
  })
  .then(function(answer){
    switch(answer.action) {
      case "View All Employees":
      viewAllEmployees()
      break

      case "View All Employees by Department":
      viewAllEmployeesByDepartment()
      break

      case "Add Employee":
      addEmployee()
      break

      case "Add Department":
      addDepartment()
      break

      case "Update Employee Role":
      updateEmployeeRole()
      break

      case "Delete Employee":
      deleteEmployee()
      break

      case "Delete Department":
      deleteDepartment()
      break

      case "Delete Employee Role":
      deleteEmployeeRole()
      break
    }
  })
}

const viewAllEmployees = () => {
  connection.query("SELECT employee.id,employee.first_name,employee.last_name,role.title,role.salary,department.name AS Department FROM employees_db.employee LEFT JOIN employees_db.role ON employee.role_id = role.id LEFT JOIN employees_db.department ON role.department_id = department.id ", function (err, res) {
      if (err) throw err;
      console.table(res);
      startApp();
  });

}

// const viewAllEmployeesByDepartment = () => {
//   connection.query("SELECT employee.id,employee.first_name,employee.last_name,department.name AS Department FROM employees_db.employee LEFT JOIN employees_db.role ON employee.role_id = role.id LEFT JOIN employees_db.department ON role.department_id = department.id ", function (err, res) {
//       if (err) throw err;
//       console.table(res);
//       startApp();
//   });

// }

