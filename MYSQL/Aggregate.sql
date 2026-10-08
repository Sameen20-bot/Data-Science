USE intro_sql;

SHOW TABLES;

SELECT * FROM customers;

SELECT city, count(*) FROM customers
group by city;

SELECT city, customer_name, count(*) FROM customers
group by city, customer_name;

-- sum, min, max, round