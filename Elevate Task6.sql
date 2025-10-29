-- Create Departments table
CREATE TABLE IF NOT EXISTS departments (
  dept_id INTEGER PRIMARY KEY,
  name TEXT
);

-- Create Employees table
CREATE TABLE IF NOT EXISTS employees (
  emp_id INTEGER PRIMARY KEY,
  name TEXT,
  dept_id INTEGER,
  salary INTEGER,
  manager_id INTEGER,
  FOREIGN KEY (dept_id) REFERENCES departments (dept_id),
  FOREIGN KEY (manager_id) REFERENCES employees (emp_id)
);

-- Create Orders table
CREATE TABLE IF NOT EXISTS orders (
  order_id INTEGER PRIMARY KEY,
  customer TEXT,
  amount INTEGER,
  order_date TEXT
);

-- Insert into departments
INSERT INTO departments (dept_id, name) VALUES
(1, 'Sales'),
(2, 'HR'),
(3, 'Engineering');

-- Insert into employees
INSERT INTO employees (emp_id, name, dept_id, salary, manager_id) VALUES
(1, 'Amit', 1, 50000, NULL),
(2, 'Rahul', 1, 40000, 1),
(3, 'Sneha', 2, 45000, NULL),
(4, 'Pooja', 3, 70000, NULL),
(5, 'Ramesh', 3, 65000, 4);

-- Insert into orders
INSERT INTO orders (order_id, customer, amount, order_date) VALUES
(1, 'Alice', 120, '2025-01-10'),
(2, 'Bob', 300, '2025-02-05'),
(3, 'Alice', 200, '2025-03-12'),
(4, 'Charlie', 50, '2025-03-20');
