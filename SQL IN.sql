
# The in operator allows you to specify multiple values in a WHERE clause

select * from film;

# Suppose we want to find films which are rated 'PG' and 'G' and 'PG-13', our first instinct would be to use OR and do the needful. 
# But while writing OR we have to type a lot, so to avoid that we can use the IN operator

SELECT title, rental_duration, rental_rate, rating
FROM film
WHERE rating IN ('PG','G','PG-13');

# So we are basically providing a list of required values to the query

# We can also use NOT IN to find the values other than the ones mentioned in the list
SELECT title, rental_duration, rental_rate, rating
FROM film
WHERE rating NOT IN ('PG','G','PG-13');

# We can also use IN to refere to a select statement inside the initial select statement
# For eg, If we want to list all the films which are in the Japanese language
# our first instinct would be to go 

select title, rating , special_features
from film
where language_id IN (select language_id from language where language_id = 1);

# Suppose we want to find customers who is from Moscow, our first instinct would be to go the customer table and find it, but when we go there we find out that 
# the customer table consists of no column as city, then we think maybe we could get the city from the address table, but sadly we won't, we just have the city id 
# So what do we do in this case, we use 2 select statements which will link one another.
# There might be different ways to find it but we will be using the IN operator here.


select customer_id, first_name, last_name
from customer
where address_id IN (select address_id from address where city_id IN (select city_id from city where city = 'Moscow'));




