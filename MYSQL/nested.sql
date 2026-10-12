use intro_sql;

show tables;

select * from telco_churn;

select count(*) from telco_churn where TotalCharges > (select  avg(TotalCharges) from telco_churn);

select count(*) from telco_churn where TotalCharges > (select  TotalCharges from telco_churn where customerID = '3655-SNQYZ');

select max(TotalCharges) from telco_churn where TotalCharges <> (select  max(TotalCharges) from telco_churn);