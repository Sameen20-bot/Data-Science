use intro_sql;

show tables;

select * from telco_churn limit 1000;

select * from telco_churn where TotalCharges > (select avg(TotalCharges) from telco_churn);