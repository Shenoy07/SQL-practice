/*SELECT column1, column2, ...
FROM table_name
WHERE condition;*/

SELECT * FROM payment; /* We have a look at the payment table*/

SELECT customer_id, payment_id, rental_id FROM payment 
Where amount = '0.99' ;  

SELECT customer_id, payment_id, rental_id, amount FROM payment
WHERE amount BETWEEN 2.99 AND 5.99;						/* we see the use of BETWEEN and AND, we also see the 2.99 and 5.99 to be included*/

SELECT customer_id, payment_id, rental_id, amount FROM payment
WHERE amount IN ('0.99', '4.99') /*We basically create a list here and check whether the rows have the certain attributes*/