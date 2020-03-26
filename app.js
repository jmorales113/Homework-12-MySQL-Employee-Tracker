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
  database: ""
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
//   connection.end();
});
