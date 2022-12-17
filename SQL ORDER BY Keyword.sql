
# When you want to arrange the result in ascending or desecding order we use ORDER-By
# The entries are automatically sorted using the ORDER BY keyword into ascending order.
# Use the DESC keyword to sort the records such that they are in descending order.

Select * from film;

Select title, replacement_cost 
from film 
order by replacement_cost;

# When we have multiple columns with order by, it will sort by the first parameter, and if values for first paramter is equal then we will go to the second one  
Select title, length, replacement_cost
from film
order by length, replacement_cost;
# Here we see that when the length is same we move to the replacement_cost

#Desc 

Select * from film;

select title, rental_duration
from film
order by rental_duration desc;

# When we use ascending and desc together
Select title, length, replacement_cost
from film
order by length asc, replacement_cost desc;
# now we can compare the two examples and see how both of them work, here we sort by ascending length and if length value is same we sort it by replacement_cost desc.






