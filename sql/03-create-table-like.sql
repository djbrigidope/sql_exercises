-- Create the schema for the following tables.
-- 03: Table name: student_like, columns: liker_id, likee_id
--
-- liker_id is a foreign key reference to a student
-- likee_id is a foreign key reference to a student
-- write the SQL in the file sql/03-create-table-like.sql

sql_exercises=# CREATE TABLE student_like (liker_id INTEGER REFERENCES student, likee_id INTEGER REFERENCES student);
CREATE TABLE
