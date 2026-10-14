use classicmodels;

show tables;

select * from products;

create table productLineTotal as
select sum(msrp), productLine
from products group by productLine;

select a.productLine, sum(a.msrp) over (partition by a.productLine) as totalMsrp from products a;

select row_number() over (order by msrp) as row_num, productLine, msrp from products; 

CREATE TABLE demo (
    var_a INT
);

INSERT INTO DEMO VALUES
(101), (102), (103), (103), (104), (105), (105), (106);

select * from demo;

select rank() over (order by var_a) as test_rank, var_a from demo;

use intro_sql;

select * from telco_churn;

select customerId, first_value(customerId) over (order by TotalCharges desc) as RichCustomer from telco_churn;