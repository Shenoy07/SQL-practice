

SELECT * from city;

# We get results when ALL the conditions between AND clause are satisfied.
SELECT * FROM city 
WHERE country_id >= 15 AND country_id <=50; 

# We get results when even one of the conditions between OR clause are satisfied.
SELECT * FROM city 
WHERE country_id = 15 OR country_id =50 OR country_id = 44;


SELECT * FROM city 
WHERE NOT country_id = 15 OR country_id =50 OR country_id = 44;