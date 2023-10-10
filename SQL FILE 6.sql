-- Create the University database (if it doesn't exist)
CREATE DATABASE IF NOT EXISTS University;

-- Switch to the University database
USE University;

-- Create the Students table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    major VARCHAR(50) NOT NULL,
    school VARCHAR(50) NOT NULL
);

-- Create the StudentMarks table
CREATE TABLE StudentMarks (
    student_id INT,
    subject VARCHAR(50) NOT NULL,
    mark DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- Insert data for 10 students
INSERT INTO Students (student_name, major, school) VALUES
    ('Sinethemba', 'Business Management', 'Capaciti'),
    ('Yamkela', 'Business Management', 'Capaciti'),
    ('Vuyani', 'Business Management', 'Capaciti'),
    ('Zukisani', 'Business Management', 'Capaciti'),
    ('Jim', 'Data Analysis', 'Capaciti'),
    ('Sanelisiwe', 'Data Analysis', 'Capaciti'),
    ('Sive', 'Public Relations', 'Capaciti'),
    ('Lutho', 'IT', 'Capaciti'),
    ('Anathi', 'IT', 'Capaciti'),
    ('Bathini', 'IT', 'Capaciti');


-- Insert marks for each student and subject
INSERT INTO StudentMarks (student_id, subject, mark) VALUES
    (1, 'Business Management', 85.00),
    (2, 'Business Management', 78.50),
    (3, 'Business Management', 92.00),
    (4, 'Business Management', 76.00),
    (5, 'Data Analysis', 67.50),
    (6, 'Data Analysis', 72.00),
    (7, 'Public Relations', 100.00),
    (8, 'IT', 55.00),
    (9, 'IT', 62.50),
    (10, 'IT', 50.00);