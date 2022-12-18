
# When we use "SELECT *" it returns us all the values in the column, it won't matter to us now, but in some cases where the database is too big it might affect the performance. 
# For every language there is a different way to limit the number of records to be returned, in mySQL we use "LIMIT" clause to return specific number of records.

SELECT *
FROM actor
LIMIT 5