USE sakila;

SELECT count(film_id) total
FROM inventory
WHERE film_id = 439;

SELECT f.title 
FROM film f
WHERE length > (select avg(length) from film);

SELECT a.first_name, a.last_name 
FROM actor a
JOIN film_actor fa
ON a.actor_id = fa.actor_id
JOIN film f
ON f.film_id = fa.film_id
WHERE f.title = "Alone Trip";

SELECT f.title
FROM film f
JOIN film_category fa
ON f.film_id = fa.film_id
JOIN category c
ON fa.category_id = c.category_id
WHERE c.name = 'Family';

SELECT c.first_name, c.last_name, c.email
FROM customer c
JOIN address a
ON c.address_id = a.address_id
JOIN city ci
ON a.city_id = ci.city_id
JOIN country co
ON ci.country_id = co.country_id
WHERE co.country = 'Canada';





