
# Aliases are used for our convenience to give the result columns a temporary name and make them more readable.
# Aliases are temporary, meaning they exist for the duration of the query.
# We use the AS keyword to create an alias

select * from category;

# suppose we wish to show the rental rate for the movie to the customer, but we need to make it clear that it is 0.99$ per day, so we will just name the column the same.
# If the alias name consists of spaces, we need to include it in a double or single quote
SELECT title AS 'Film Title', rental_rate AS 'Rent Per Day (in $)', rating as Rating 
FROM film
LIMIT 5;

# We can also use alias to reduce the length of our query, meaning we can reduce the name of the table to reduce typing it repetitively
# try to understand the query below, it is a bit complex from the others we have used before.
# We are trying to name the category of the films, we are extracting information from multiple tables here

SELECT f.film_id, f.title, c.name
FROM film as f, category as c, film_category as fc
where f.film_id = fc.film_id AND c.category_id = fc.category_id
order by film_id;

# If we would have not used aliases, the query would have looked this

SELECT film.film_id, film.title, category.name
FROM film, category, film_category
where film.film_id = film_category.film_id AND category.category_id = film_category.category_id
order by film_id;
 