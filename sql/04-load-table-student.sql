-- Load the data into the tables (make sure you have created the tables above).
--
-- 04: SQL query to load the CSV file data/students.csv for the student table
-- Write the SQL in the file sql/04-load-table-student.sql

 COPY student (id, name, grade) FROM '/Users/djbrigidope/desktop/devops/sql-exercises/data/students.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM student;
