-- Find all columns from the film table.
SELECT * FROM film

-- Find district,phone,postal_code from “address” table.
SELECT district, phone,postal_code FROM address

-- Find address, district,postal_code and concat them and get as “full_address”.
SELECT district ||' '|| phone||' '|| postal_code AS full_address FROM address

-- Find all “R” rated movies, return title, rating and length only
SELECT title, length, rating from film WHERE rating = 'R'

-- Find all “G” rated movies with a length greater than 3 hours
SELECT * FROM film WHERE rating = 'G' AND length > 180

-- Find top 10 payments by amount spent
SELECT * FROM payment ORDER BY amount DESC LIMIT 10

-- Find first 5 films, sort them by title DESC
SELECT * FROM film ORDER BY title DESC LIMIT 5

-- Find all payments with amount between 1 and 2 and sort them by amount descending order
SELECT * FROM payment WHERE amount BETWEEN '1' and '2' ORDER BY amount DESC

-- Find payments that happened in March 2007
SELECT * FROM payment WHERE payment_date BETWEEN '2007-03-01' and '2007-03-31'

-- Find all films which title contains the word “north”
SELECT * from film where title ilike '%north%'

-- Find all actors with surname startging with “W”
SELECT * from actor where last_name ilike 'w%'

-- Find all actors with name containing three caracthers and last one is “y”
SELECT * FROM actor where first_name ilike '__y'

--create 5 examplary queries
-- find actors where either name or surname contains string 'hans'
-- select 100 movies with title starting with A 
-- find actresses that are namend mindy or kelly
-- find customer who's name starts with J & end with y
-- find countries that start or end with a Y
