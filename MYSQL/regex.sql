use intro_sql;

show tables;

select * from telco_churn;

select count(*) from telco_churn where PaymentMethod like "e%";

select count(*) from telco_churn where PaymentMethod regexp "^e";

select count(*) from telco_churn where customerId like "%v%" or customerId like "%w%" or customerId like "%x%";

select count(*) from telco_churn where customerId regexp "[vwx]";

select count(*) from telco_churn where customerId regexp "[v-x]";

