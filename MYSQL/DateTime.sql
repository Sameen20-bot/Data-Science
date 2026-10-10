USE SQL_PRACTICE;

select * from transaction_details;

select datediff(sysdate(),order_date) as difference, order_date from transaction_details;

set sql_safe_updates = 0;

update transaction_details set order_date = "2024-01-15" where prod_id = 1;
UPDATE transaction_details SET order_date = '2024-01-28' WHERE prod_id = 2;
UPDATE transaction_details SET order_date = '2024-02-04' WHERE prod_id = 3;
UPDATE transaction_details SET order_date = '2024-02-19' WHERE prod_id = 4;
UPDATE transaction_details SET order_date = '2024-03-07' WHERE prod_id = 5;
UPDATE transaction_details SET order_date = '2024-03-22' WHERE prod_id = 6;
UPDATE transaction_details SET order_date = '2024-04-11' WHERE prod_id = 7;
UPDATE transaction_details SET order_date = '2024-05-03' WHERE prod_id = 8;
UPDATE transaction_details SET order_date = '2024-06-17' WHERE prod_id = 9;
UPDATE transaction_details SET order_date = '2024-07-29' WHERE prod_id = 10;

select date_format(order_date, "%y") as year_date, order_date from transaction_details;

select day(order_date) as days, order_date from transaction_details;

select adddate("2017-05-15", interval 10 quarter);
select adddate("2017-05-15", interval -10 day);
select subdate("2017-05-15", interval 10 day);
select subdate("2017-05-15", interval -10 day);