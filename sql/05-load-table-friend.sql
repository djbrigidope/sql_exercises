-- Load the data into the tables (make sure you have created the tables above).
--
-- 05: SQL query to load the CSV file data/friends.csv for the friend table
-- Write the query in the file sql/05-load-table-friend.sql

 COPY student (id, name ) FROM '/Users/djbrigidope/desktop/devops/sql-exercises/data/friends.csv' DELIMITER ',' CSV HEADER;
