USE sakila;

# 1. Write a query to display for each store its store id, city and country
SELECT s.store_id id,
	   c.city city,
       co.country country
FROM store s
JOIN address a
ON s.address_id = a.address_id
JOIN city c
ON a.city_id = c.city_id
JOIN country co
ON c.country_id = co.country_id;

# 2. Write a query to display how much business, in dollars, each store brought in.
SELECT SUM(p.amount) total
FROM store s
JOIN staff st
ON s.store_id = st.store_id
JOIN payment p
ON st.staff_id = p.staff_id
GROUP BY p.staff_id;

# 3. What is the average running time of films by category?
SELECT c.name category,
	   AVG(f.length) total_length
FROM category c
JOIN film_category fc
ON c.category_id = fc.category_id
JOIN film f
ON fc.film_id = f.film_id
GROUP BY c.category_id
ORDER BY c.name;

# 4. Which film categories are longest (length)(find top 5)?
SELECT c.name category,
	   AVG(f.length) total_length
FROM category c
JOIN film_category fc
ON c.category_id = fc.category_id
JOIN film f
ON fc.film_id = f.film_id
GROUP BY c.category_id
ORDER BY total_length DESC
LIMIT 5;

# 5. Display the top 5 most frequently (number of times) rented movies in descending order
SELECT f.title title
FROM film f
JOIN inventory i
ON f.film_id = i.film_id
JOIN rental r
ON i.inventory_id = r.inventory_id
GROUP BY f.film_id
ORDER BY COUNT(f.film_id) DESC
LIMIT 5;

# 6. List the top 5 genres in gross revenue in descending order.
SELECT c.name category,
	   SUM(p.amount) gross_revenue
FROM category c
JOIN film_category fc
ON c.category_id = fc.category_id
JOIN film f
ON fc.film_id = f.film_id
JOIN inventory i
ON f.film_id = i.film_id
JOIN rental r
ON i.inventory_id = r.inventory_id
JOIN payment p
ON r.rental_id = p.rental_id
GROUP BY c.category_id
ORDER BY gross_revenue DESC
LIMIT 5;	

