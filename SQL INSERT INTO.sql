SELECT * FROM sakila.actor;

#note to self: while uploading, make sure u use the delte command and run and upload comments

# Points to remember:
# 1. Always check the schema of the table before entering the data, because SQL won't show any error whiel inserting, but if we use the data later for computation, it might show us errors.
# 2. Date time values should always be enclosed within a single quotes ''

SELECT * FROM actor
WHERE first_name = "NIKHIL";

# We can insert a record in 2 ways

# 1. We mention the column names and enter the values according to the column names 
#  

desc actor; # We are checking the schema

INSERT INTO actor(first_name,actor_id,  last_name,last_update)
VALUES ('SQL',1237,'ISFUN','2022-12-16 19:11:46');


SELECT * FROM actor
WHERE actor_id = 1237;

# 2. We can just mention the table name and then directly enter the values, BUT we need to enter it in the order of default table

desc actor; # We are checking the schema

Select * from actor;

# Here we see the order is actor_id followed by first_name, last_name and last_update
# So while inserting the second way we need to enter it in the same order

INSERT INTO actor
VALUES (1238,'SQL','ROCKS','2022-12-16 19:11:46');

SELECT * FROM actor
WHERE actor_id = '1238';

# If we try to run the insert command again, we will get an error because the column "actor_id" is one of the primary keys and duplication is not allowed. 

#--------------------------------------------------------------------------------------
# We can also insert a new record with specific column values, the other values will be updated automatically

INSERT INTO actor(first_name, last_name)
values ('SQL','ISSOMUCHFUN');

SELECT * FROM actor
WHERE last_name = 'ISSOMUCHFUN';

# So here we see that it automatically updated the actor_id and the last_update timestamp\

# What happens if we dont give the first name?

INSERT INTO actor(last_name)
values ('NOFIRSTNAME');

# It will show us an error saying "Field "first_name" doesn't have a default value"
# All of this is done when the table is created, we can see it in the schema part in the Extra Field where column "actor_id" has a setting auto_increment 
# and column "last_update" has a setting DEFAULT_GENERATED on update CURRENT_TIMESTAMP

desc actor






