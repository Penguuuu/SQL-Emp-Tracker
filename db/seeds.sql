-- Seeds for departments table
INSERT INTO department (name) VALUES
  ('Sales'),
  ('Marketing'),
  ('Engineering');

-- Seeds for roles table
INSERT INTO role (title, salary, department_id) VALUES
  ('Sales Manager', 70000, 1),
  ('Sales Representative', 50000, 1),
  ('Marketing Manager', 60000, 2),
  ('Marketing Coordinator', 40000, 2),
  ('Software Engineer', 80000, 3),
  ('QA Engineer', 60000, 3);

-- Seeds for employees table
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
  ('John', 'Doe', 1, NULL),
  ('Jane', 'Smith', 2, 1),
  ('Mike', 'Johnson', 3, NULL),
  ('Sarah', 'Williams', 4, 3);
