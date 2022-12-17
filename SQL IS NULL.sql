# Null value

# 1. A field with NULL value is a field with no value
# 2. If a field in a table is optional, it is possible to insert a new record or update a record without adding a value to this field. Then, the field will be saved with a NULL value.
# 3. A NULL value is different from a zero value or a field that contains spaces. A field with a NULL value is one that has been left blank during record creation!


# We cannot use comparison operators like =, <, <> to check for NULL values
# We will have to use IS NULL and IS NOT NULL for that.

select * from actor
where first_name is NULL;

#this will show no values

SELECT * from actor
where first_name IS NOT NULL;
