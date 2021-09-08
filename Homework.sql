-- 1. How many actors are there with the last name 'Wahlberg'?
-- Answer: 2
SELECT *
FROM actor
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
-- Answer: 5,607
SELECT COUNT(amount)
FROM payment 
WHERE amount >= 3.99 AND amount <= 5.99;

-- 3. What film does the store have the most of? (Search in inventory)
-- Answer: 8
SELECT film.film_id, title, COUNT (title)
FROM inventory
JOIN film ON film.film_id = inventory.film_id
GROUP BY film.film_id, title
ORDER BY COUNT (*) DESC LIMIT 1;

-- 4. How many customers have the last name 'williams'?
-- Answer: 1
SELECT *
FROM customer
WHERE last_name = 'Williams';

-- 5. What store employee (get the id) sold the most rentals?
-- Answer: employee #2
SELECT MAX(staff_id)
FROM rental;

-- 6. How many different district names are there?
-- Answer: 603
SELECT COUNT(district)
FROM address;

-- 7. What film has most the most actors in it? 
-- (use film_actor table and get film_id)
-- Answer:
SELECT film_actor.film_id
FROM film_actor;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? 
-- (use customer table)
-- Answer: 21
SELECT store_id, last_name
FROM customer
WHERE last_name LIKE '%es';

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- Answer:


-- 10. Within the film table, how many rating categories are there? 
-- And what rating has the most movies total?
-- Answer: 5 , 
SELECT rating
FROM film
GROUP BY rating;

SELECT rating, title, MAX(rating)
FROM film
GROUP BY film.rating, film.title
