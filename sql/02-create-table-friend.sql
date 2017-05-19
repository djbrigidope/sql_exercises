-- Create the schema for the following tables.
--
-- 02: Table name: friend, columns: id1, id2
--
-- id1 is a foreign key reference to a student
-- id2 is a foreign key reference to a student
-- write the SQL in the file sql/02-create-table-friend.sql

sql_exercises=# CREATE TABLE friend (id1 INTEGER REFERENCES student, id2 INTEGER REFERENCES student);
CREATE TABLE
sql_exercises=#
