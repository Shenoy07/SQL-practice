/*SELECT DISTINCT column1, column2, ...
FROM table_name;*/
/**/
SELECT * FROM film_category;

SELECT category_id FROM film_category; /*gives us all the category_id for all rows and it includes repetition in ascending order*/

SELECT DISTINCT category_id FROM film_category; /*gives us category ids without repetition in ascending order*/

SELECT COUNT(DISTINCT category_id) FROM film_category;/*gives us the count of the distinct category ids*/

select * FROM inventory; 
select store_id, film_id from inventory;/*We use this to confirm that we get the output in ascending order irrespective of the number of columns*/ 
