
# We use the LIKE operator in a WHERE clause to search for some specific paterns in our mentioned column
# There are two wildcards that are used with the LIKE operator
# We can also use the AND or OR operators with the LIKE operator

# Wild cards
# 1. % -> represents zero, one or multiple characters
# 2. _ -> represents one, single character  

# We will be using the country table here 

# 1. Lets get all the names of the country that start with the letter 'A',So here we will be using % after the letter 'a'. As we see from the Wildcards point #1 that % represents multiple characters   
SELECT * FROM country
WHERE country LIKE 'a%';

# so here we see that the 'a' here is not upper case yet it shows us proper result 

# 2. Lets get all the names of the country that end with a 
 
SELECT * FROM country
WHERE country LIKE '%a' ;

# 3. Lets find some countries which have the letters 'ra' in any position
SELECT * FROM country
WHERE country LIKE '%ra%';

# 3. Lets find some countries which have the letter 'w' at the third position

SELECT * FROM country
WHERE country LIKE '__w%';
# So here we used 2 '_" which represent single characters

# 4. Lets find some country names which start with 'a' and are at most 6 characters in length 
SELECT * FROM country
WHERE country LIKE 'a_____';

# 5. Lets find some country names which start with 'n' and are atleast 6 characters in length
SELECT * FROM country
WHERE country LIKE 'n_____%';

# 6. Lets find countries which star with 'i' and end with 'a'
SELECT * FROM country
WHERE country LIKE 'i%a';






