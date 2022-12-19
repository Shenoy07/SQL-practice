

# 1. the MIN() fucntion will return us the smallest value in the column which we have mentioned.
# 2. Likewise, the MAX() will return the largest value
# 3. Basically, you will be assigning a variable to the value which you extract and display it.

select * from payment
limit 5;

SELECT MIN(amount) as minAmount
FROM payment;

SELECT MAX(amount) as maxAmount
FROM payment;

