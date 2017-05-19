-- Create the schema for the following tables.
--
-- 01: Table name: student, columns: id, name, grade
--
-- id is the primary key
-- name is only their first name
-- grade is an integer
-- write the SQL in the file sql/01-create-table-student.sql

sql_exercises=# CREATE TABLE student (id INTEGER PRIMARY KEY, name TEXT, grade INTEGER);
CREATE TABLE
