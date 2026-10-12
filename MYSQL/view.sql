use intro_sql;

create table female_telco as
select * from telco_churn where gender = 'Female';

create view female_telcos as
select * from telco_churn where gender = 'Female';

select * from female_telcos;