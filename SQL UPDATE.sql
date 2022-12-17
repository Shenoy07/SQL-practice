# Now we look into the update command

# Points to note
# 1. Always use the where clause, if you don't then it will update all the values in the column
select * from customer;

# we try to update the last_name of a person with customer id 2

UPDATE customer
SET last_name = 'SQLLLL' 
WHERE customer_id = 2;

select * from customer