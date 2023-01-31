
-- SELECT
-- select all staff order by first_name,
SELECT * FROM staff ORDER BY first_name
-- select all payment order by amount desc
SELECT * FROM payment ORDER BY amount DESC
-- select all addresses order by postal_code asc
SELECT * FROM address ORDER BY postal_code ASC

-- JOIN
-- Select all customers ad join their addresses.
SELECT * FROM customer JOIN address USING (address_id)
-- Select all stores and join their addresses.
SELECT * FROM store JOIN address USING (address_id)
-- Select all stores and join staff using manager_staff_id
SELECT * FROM store JOIN staff ON store.manager_staff_id = staff.staff_id
-- Select all addresses join cities
 SELECT * FROM address JOIN city USING (city_id)

-- GROUP BY

-- find total payment by date
SELECT payment_date, SUM(amount) as total FROM payment GROUP BY (payment_date)
-- find average payment
SELECT AVG(amount) as average FROM payment;
-- sum all payments
SELECT SUM(amount) as total_payments from payment