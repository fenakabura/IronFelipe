USE sakila;

# 1 
SELECT last_name
FROM actor
WHERE last_name IN (
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(last_name) = 1);

# 2
SELECT DISTINCT last_name
FROM actor
WHERE last_name IN (
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(last_name) <> 1);

# 3
SELECT count(rental_id)
FROM rental
GROUP BY staff_id;

# 4
SELECT rating, count(rating)
FROM film
GROUP BY rating;

# 5 
SELECT rating, AVG(length) average
FROM film
GROUP BY rating;

# 6 
SELECT rating, AVG(length) average
FROM film
GROUP BY rating
HAVING average > 120;
