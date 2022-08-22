USE sakila;

# select one column from the table to get the film titles
SELECT title
FROM film;

# Select one column from a table and alias it. Get unique list of film languages under the alias language
SELECT DISTINCT(language_id) AS language
FROM language;

# how many stores the company has?
SELECT *
FROM store;

# how many employees the company has?
SELECT *
FROM staff
ORDER BY staff_id;

# list with employees first name
SELECT first_name
FROM staff;



