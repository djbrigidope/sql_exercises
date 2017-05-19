-- ****************************************************************************
-- ***************************  SQL Queries  **********************************
-- ****************************************************************************

-- What are your favorite books? You can make a database table to store
-- them in! In this first step, create a table to store your list of books.
-- It should have columns for id, name, and rating.

create table buttBooks (id INTEGER PRIMARY KEY name TEXT, quantity INTEGER, rating INTEGER);

  INSERT INTO buttBooks VALUES (1, "Everybody Poops", 2, 5);
  INSERT INTO buttBooks VALUES (2, "Everybody Poops pt 2 Electric Boogaloo", 4, 5);
  INSERT INTO buttBooks VALUES (3, "Runner's Butt: Foam Rolling Your Glutes", 3, 5);
  INSERT INTO buttBooks VALUES (4, "No Butts: Stop Smoking Tomorrow", 2, 5);
  INSERT INTO buttBooks VALUES (5, "I Like: The Sir Mix Alot Story", 4, 3);

-- This database contains an incomplete list of box office hits and their release year.
-- In this challenge, you're going to get the results back out of the database in
-- different ways! In this first step, just select all the movies.

CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);
SELECT * FROM movies;

-- Here's a table containing a TODO list with the number of minutes it will take to
-- complete each item. Insert another item to your todo list with the estimated minutes
-- it will take.

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);

-- Create your own store! Your store should sell one type of things,
-- like clothing or bikes, whatever you want your store to specialize in.
-- You should have a table for all the items in your store, and at least 5 columns
-- for the kind of data you think you'd need to store. You should sell at least 15 items,
-- and use select statements to order your items by price and show at least one statistic
-- about the items.

CREATE TABLE rayGuns (id INTEGER PRIMARY KEY, ammoCapacity INTEGER, name TEXT, quantity INTEGER, barrelLength INTEGER, semiAuto INTEGER, fullAuto INTEGER, sparkels INTEGER);

INSERT INTO rayGuns VALUES(1, 6, "6pulse", 25, 3, 1, 0, 75);
INSERT INTO rayGuns VALUES(2, 99, "flamezThower", 50, 16, 0, 1, 9000);
INSERT INTO rayGuns VALUES(3, 16, "bombaBomber", 50, 6, 1, 0, 4);
INSERT INTO rayGuns VALUES(4, 120, "bulliesWitFullies", 1000, 12, 1, 1, 9000);
INSERT INTO rayGuns VALUES(5, 6, "6rapide", 25, 3, 1, 1, 95);
INSERT INTO rayGuns VALUES(6, 6, "6fury", 1000, 3, 1, 1, 9000);
INSERT INTO rayGuns VALUES(7, 1, "nineThowWow", 2, 2, 0, 0, 9000);
INSERT INTO rayGuns VALUES(8, 12, "portyPibe", 50, 5, 1, 0, 10);
INSERT INTO rayGuns VALUES(9, 1000, "leaky", 20, 9, 1, 1, 15);
INSERT INTO rayGuns VALUES(10, 6, "noBro", 25, 3, 1, 1, 100);
INSERT INTO rayGuns VALUES(11, 6, "yeahBro", 25, 3, 1, 1, 9000);
INSERT INTO rayGuns VALUES(12, 1, "0pulse", 5, 3, 1, 0, 9900000000);
INSERT INTO rayGuns VALUES(13, 6, "duelingPistols", 25, 3, 1, 0, 200);
INSERT INTO rayGuns VALUES(14, 6, "scratchFight", 290, 3, 1, 1, 1);
INSERT INTO rayGuns VALUES(15, 4, "canShootin", 25, 3, 1, 0, 75);
INSERT INTO rayGuns VALUES(16, 6, "maskOff", 4, 7, 0, 1, 9000);
SELECT * FROM rayGuns where sparkels > 100;
SELECT SUM(fullAuto) from rayGuns;


-- ****************************************************************************
-- ***************************  More Advanced SQL Queries  ********************
-- ****************************************************************************
-- We've created a database of songs and artists, and you'll make playlists
-- from them in this challenge. In this first step,
-- select the title of all the songs by the artist named 'Queen'.
SELECT title FROM songs where artist = "Queen";

-- Now you'll make a 'Pop' playlist. In preparation, select the name of all of
-- the artists from the 'Pop' genre.
-- (Tip: Make sure you type it 'Pop', SQL considers that different from 'pop'.)
SELECT name FROM artists WHERE genre = "Pop";

-- To finish creating the 'Pop' playlist, add another query that will select
-- the title of all the songs from the 'Pop' artists.
-- It should use IN on a nested subquery that's based on your previous query.

 SELECT title FROM songs WHERE artist IN (SELECT name From artists WHERE genre = "Pop");


  -- We've created a database of a few popular authors and their books, with
  -- word counts for each book. In this first step, select all the authors who
  -- have written more than 1 million words, using GROUP BY and HAVING.
  -- Your results table should include the 'author' and their total word count
  -- as a 'total_words' column.

  SELECT author, SUM(words) AS total_words FROM books
  GROUP BY author
  HAVING total_words > 1000000
  ;



  SELECT author, AVG(words) AS avg_words FROM books
  GROUP BY author
  HAVING avg_words > 150000
  ;

  -- We've created a database to track student grades, with their name, number
  -- grade, and what percent of activities they've completed.
  -- In this first step, select all of the rows, and display the name,
  -- number_grade, and percent_completed, which you can compute by multiplying
  -- and rounding the fraction_completed column.

  SELECT name, number_grade, ROUND(fraction_completed*100) AS percent_completed FROM student_grades;



  -- Now, this step is a little tricky. The goal is a table that shows how many
  -- students have earned which letter_grade. You can output the letter_grade by
  -- using CASE with the number_grade column, outputting 'A' for grades > 90, 'B'
  -- for grades > 80, 'C' for grades > 70, and 'F' otherwise. Then you can use
  -- COUNT with GROUP BY to show the number of students with each of those grades.

  SELECT name, number_grade, ROUND(fraction_completed*100) AS percent_completed FROM student_grades;

  SELECT COUNT(*),
      CASE
          WHEN ROUND(fraction_completed*100) > 90 THEN "A"
          WHEN ROUND(fraction_completed*100) > 80 THEN "B"
          WHEN ROUND(fraction_completed*100) > 70 THEN "C"
          ELSE "F"
      END AS "letter_grade"
  FROM student_grades
  GROUP BY letter_grade;

  
