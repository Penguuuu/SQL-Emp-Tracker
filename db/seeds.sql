-- Seeds for departments table
INSERT INTO department (name) 
VALUES
  ('IT Service'),
  ('Network'),
  ('Engineering');

-- Seeds for roles table
INSERT INTO role (title, salary, department_id) 
VALUES
  ('IT Help Desk', 45000, 1),
  ('IT Supervisor', 68000, 1),
  ('System Analyst', 72000, 2),
  ('Senior Analyst', 78000, 2),
  ('Software Engineer', 80000, 3),
  ('Senior Software Engineer', 100000, 3);

-- Seeds for employees table
INSERT INTO employee (first_name, last_name, role_id, manager_id) 
VALUES
  ('John', 'Doe', 1, NULL),
  ('Jane', 'Smith', 2, 1),
  ('Mike', 'Johnson', 3, NULL),
  ('Sarah', 'Williams', 4, 3);
