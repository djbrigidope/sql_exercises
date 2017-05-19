postgres=# \c sql_exercises;
You are now connected to database "sql_exercises" as user "djbrigidope".





<!-- DROP DATABASE -->
sql_exercises=# \c aybruh
You are now connected to database "aybruh" as user "djbrigidope".
aybruh=# \d
No relations found.

<!-- CREATE TABLE -->
sql_exercises=# CREATE TABLE student_like (liker_id INTEGER REFERENCES student, likee_id INTEGER REFERENCES student);
CREATE TABLE

<!-- DROP TABLE -->
You are now connected to database "postgres" as user "djbrigidope".
postgres-# \d
 public | friend             | table    | djbrigidope
 public | student_like       | table    | djbrigidope
 public | students           | table    | djbrigidope

 postgres=# DROP TABLE students;
 DROP TABLE

 postgres=# \dt
 public | friend       | table | djbrigidope
 public | student_like | table | djbrigidope


<!-- CREATE SCHEMA -->
 postgres=# create schema myschema;
 CREATE SCHEMA

<!-- INSERT -->
postgres=# INSERT INTO friend (ID,NAME,AGE,ADDRESS,SALARY,JOIN_DATE) VALUES (1, 'Paul', 32, 'California', 20000.00,'2001-07-13');

<!-- SELECT -->
SELECT * FROM friend;


<!-- EXPRESSION -->
SELECT * FROM weed_smoked WHERE rating > 5;


<!-- WHERE -->
SELECT * FROM weed_smoked WHERE rating > 5;
