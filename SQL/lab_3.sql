USE sakila;

# 1 Which actor has appeared in the most films?

SELECT a.first_name first_name,
	   a.last_name last_name,
       COUNT(a.actor_id) total
FROM actor a
JOIN film_actor fa
ON a.actor_id = fa.actor_id
JOIN film f
ON fa.film_id = f.film_id
GROUP BY a.actor_id
ORDER BY total DESC
LIMIT 1;

# 2 Most active customer

SELECT c.first_name first_name,
	   c.last_name last_name,
       COUNT(c.customer_id) total
FROM customer c
JOIN rental r
ON c.customer_id = r.customer_id
GROUP BY c.customer_id
ORDER BY total DESC
LIMIT 1;

# 3 List number of films per category

SELECT c.name category,
	   COUNT(fc.category_id) total
FROM category c
JOIN film_category fc
ON c.category_id = fc.category_id
GROUP BY c.category_id
ORDER BY c.name;

# 4 Display the first and last names, as well as the address, of each staff member.
SELECT s.first_name first_name,
	   s.last_name last_name,
       a.address address
FROM staff s
JOIN address a
ON s.address_id = a.address_id;

# 5 Display the total amount rung up by each staff member in august of 2005
SELECT s.first_name first_name,
	   s.last_name last_name,
       SUM(p.amount) total
FROM staff s
JOIN payment p
ON s.staff_id = p.staff_id
WHERE p.payment_date LIKE '2005-08%'
GROUP BY s.staff_id
ORDER BY total DESC;

# 6 List each film and the number of actors who are listed for that film
SELECT f.title film,
	   COUNT(fa.actor_id) total
FROM film f
JOIN film_actor fa
ON f.film_id = fa.film_id
GROUP BY fa.film_id
ORDER BY total DESC
LIMIT 10;

# 7 Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name
SELECT c.first_name first_name,
	   c.last_name last_name,
       SUM(p.amount) total
FROM customer c
JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY p.customer_id
ORDER BY c.last_name;








       
