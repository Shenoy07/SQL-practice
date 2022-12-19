# 1. COUNT() returns the number of records that match the condition
# 2. AVG() returns the average of the column
# 3. SUM() returns the sum of the values in the column\
# 4. For AVG() and SUM() the column should be numeric.


select * from film
limit 5;

# Here we are getting the count of the films where the rating is PG.
SELECT count(title)
FROM film
WHERE rating = "PG";


# We are trying to get the average replacement_cost of the films whose rating is PG
SELECT AVG(replacement_cost)
FROM film
WHERE rating = "PG";


# Here we are finding how much time it will require us to watch all the movies in our DB with a "PG" rating. I assumed that the length is in minutes
SELECT SUM(LENGTH)
FROM film
WHERE rating = "PG"









