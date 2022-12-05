-- 1. Drop column picture from staff.

USE sakila;
SELECT * FROM staff;
ALTER TABLE staff DROP picture;


-- 2. Improve the structure of the sakila database

-- I. 	The film_category and category tables only add one information to
-- 		the film table, it can be summarized into one column in the film table. 

-- II. 	The table film has two references to language, and original language_id.
-- 		The language table doesn't contain any other information, so we can integrate it into 
-- 		the film table with columns language and original_language


-- III. In the same manner the city and country tables dont include any additional
-- 		information and can be included into the address table.


-- IV.	We have the staff_id in the rental and the payment, but one can be deduced from the other,
-- 		so we drop the staff_id from the payment. 


-- V. 	The same goes for the customer_id.