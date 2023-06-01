function prompts() {
    inquirer
      .prompt([
        {
          type: "list",
          name: "choice",
          message: "What would you like to do?",
          choices: [
            // other choices...
            {
              name: "View All Employees",
            },
            {
              name: "View All Roles",
            },
            {
              name: "View All Departments",
            },
            // other choices...
          ],
        },
      ])
      .then((answers) => {
        if (answers.choice === "View All Employees") {
          // Query to view all employees
          db.query("SELECT * FROM employee", (err, results) => {
            if (err) throw err;
            console.log("Viewing All Employees: ");
            console.table(results);
            prompts();
          });
        } else if (answers.choice === "View All Roles") {
          // Query to view all roles
          db.query("SELECT * FROM role", (err, results) => {
            if (err) throw err;
            console.log("Viewing All Roles: ");
            console.table(results);
            prompts();
          });
        } else if (answers.choice === "View All Departments") {
          // Query to view all departments
          db.query("SELECT * FROM department", (err, results) => {
            if (err) throw err;
            console.log("Viewing All Departments: ");
            console.table(results);
            prompts();
          });
        }
      });
  }