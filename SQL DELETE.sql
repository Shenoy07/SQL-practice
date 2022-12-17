
# Points to note
# 1. MySQL workbench won't allow you to delete rows because it will be running in safe mode. To use the delete command, run this command SET SQL_SAFE_UPDATES = 0; and you are good to go.
# 2. One more thing I would suggest is to set autocommit as off, the reason being, by any chance if you delete something unwanted, you can just rollback the changes. If you have autocommit as on, the changes will be commited to database
#    and you wont be able to rollback. Run this command: SET autocommit = 0
# 3. Always use the where clause, if you don't then it will delete all the values in the table 
# 4. If you delete the all the values in the table due to a mistake, you will still have the table structure intact, you can either rollback like mentioned above or you can just add values.

SET autocommit = 0;

select * from actor;

SELECT * FROM actor
WHERE actor_id = 1239;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM actor 
WHERE actor_id = 1239;

SELECT * FROM actor
WHERE actor_id = 1239;

ROLLBACK;

SELECT * FROM actor
WHERE actor_id = 1239;


