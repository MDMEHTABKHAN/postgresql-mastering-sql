CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);


CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    salary NUMERIC(10,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);


CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);




INSERT INTO departments (department_name) VALUES
('Human Resources'), ('Engineering'), ('Sales'), ('Marketing'), ('Finance'),
('Operations'), ('Customer Support'), ('Legal'), ('IT'), ('Admin'),
('Quality Assurance'), ('Logistics'), ('Procurement'), ('Product Management'), ('Security'),
('Training'), ('R&D'), ('Public Relations'), ('Compliance'), ('Business Intelligence');



INSERT INTO employees (employee_name, department_id, salary) VALUES
('Aarav Sharma', 2, 70000),
('Vivaan Patel', 1, 55000),
('Diya Reddy', 3, 60000),
('Ishaan Singh', 4, 72000),
('Anaya Iyer', 5, 68000),
('Krishna Joshi', 6, 58000),
('Meera Nair', 7, 61000),
('Aditya Verma', 8, 74000),
('Saanvi Pillai', 9, 69000),
('Rohan Gupta', 10, 53000),
('Kavya Das', 11, 56000),
('Ayaan Bansal', 12, 64000),
('Anika Mehta', 13, 59000),
('Kabir Desai', 14, 62000),
('Nisha Sinha', 15, 67000),
('Arjun Rao', 16, 71000),
('Riya Malhotra', 17, 63000),
('Yash Kapoor', 18, 57000),
('Tanya Bhatt', 19, 65000),
('Dev Arya', 20, 54000),
('Nikhil Chawla', 3, 62000),
('Priya Menon', 2, 70000),
('Siddharth Kaul', 4, 75000),
('Ira Saxena', 5, 66500),
('Harsh Vardhan', 6, 59000),
('Sneha Rao', 7, 60500),
('Rudra Ghosh', 8, 71500),
('Pooja Rathi', 9, 68500),
('Aditi Kulkarni', 10, 55500),
('Manav Jain', 1, 58000);


INSERT INTO projects (project_name, employee_id) VALUES
('Payroll System Upgrade', 1),
('New Website Launch', 2),
('CRM Optimization', 3),
('Ad Campaign 2025', 4),
('Annual Budget Planning', 5),
('Logistics Tracker', 6),
('Chatbot Development', 7),
('Contract Review', 8),
('Network Upgrade', 9),
('Office Renovation', 10),
('Testing Automation', 11),
('Fleet Management', 12),
('Vendor Portal', 13),
('Product Roadmap', 14),
('Surveillance Setup', 15),
('Employee Onboarding App', 16),
('Clinical Trials App', 17),
('Social Media Campaign', 18),
('Audit Dashboard', 19),
('Data Warehouse Setup', 20),
('Retail POS Integration', 21),
('Support Chat Migration', 22),
('AI Chat Assistant', 23),
('Market Research Tool', 24),
('ERP Implementation', 25),
('Training Portal', 26),
('Smart Assistant', 27),
('Report Automation', 28),
('Feedback System', 29),
('E-commerce Analytics', 30);
