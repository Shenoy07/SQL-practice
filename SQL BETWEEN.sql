

# The between operator selects values within a given range of values. The values can be text, numbers and dates.
# the between operator is inclusive, meaninig, the start and end values are included in the result.

select * from film;

# We only have 50 minutes to watch something, what can we watch?? 

SELECT title, release_year, length, rating,last_update
from film
WHERE length BETWEEN  40 AND 50 ;

# We can either spend 40 minutes, or we can spend more than 50 minutes to watch a movie, what can we watch?

SELECT title, release_year, length,last_update
from film
WHERE length NOT BETWEEN  40 AND 50 
ORDER BY length;

# We want to watch a movie whose length is 60 minutes or less, but the movie has to have a rating of PG or PG-13
SELECT title, release_year, length, rating,last_update
from film
WHERE length BETWEEN  0 AND 60
AND rating IN ('PG','PG-13');

# When working with text it will give everything in an ascending order
SELECT title, release_year, length, rating,last_update
from film
WHERE title BETWEEN 'ALTER VICTORY' AND 'DEEP CRUSADE';



