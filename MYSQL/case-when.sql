create database Sales;

use Sales;

create table Sales_Customers(
   customer_id varchar(50) not null,
   order_id varchar(50) not null,
   Sales int,
   primary key (customer_id)
);

insert into Sales_Customers values('C1', 'O1', 100);
insert into Sales_Customers values('C2', 'O2', 200);
insert into Sales_Customers values('C3', 'O3', 300);
insert into Sales_Customers values('C4', 'O4', 400);
insert into Sales_Customers values('C5', 'O5', 50);
insert into Sales_Customers values('C6', 'O6', 60);
insert into Sales_Customers values('C7', 'O7', 70);
insert into Sales_Customers values('C8', 'O8', 130);
insert into Sales_Customers values('C9', 'O9', 190);
insert into Sales_Customers values('C10', 'O10', 230);

select category, 
sum(sales) as TotalSales
FROM(
    select
    sales, case
    when sales > 200 then 'high'
    when sales > 100 then 'medium'
    else 'low'
    end as 'category'
    from Sales_Customers) as t
group by category
order by TotalSales desc;

CREATE TABLE Customers (
    CustomerID  INT          NOT NULL,
    FirstName   VARCHAR(50)  NOT NULL,
    LastName    VARCHAR(50)  NULL,
    Country     VARCHAR(50)  NULL,
    PRIMARY KEY (CustomerID)
);

INSERT INTO Customers VALUES
(1, 'Jossef', 'Goldberg', 'Germany'),
(2, 'Kevin',  'Brown',    'USA'),
(3, 'Mary',    NULL,      'USA'),
(4, 'Mark',   'Schwarz',  'Germany'),
(5, 'Anna',   'Adams',    'USA');
    
CREATE TABLE Employees (
    EmployeeID  INT          NOT NULL,
    FirstName   VARCHAR(50)  NOT NULL,
    LastName    VARCHAR(50)  NULL,
    Gender      CHAR(1)      NULL,
    PRIMARY KEY (EmployeeID)
);

INSERT INTO Employees VALUES
(1, 'Frank',  'Lee',     'M'),
(2, 'Kevin',  'Brown',   'M'),
(3, 'Mary',    NULL,     'F'),
(4, 'Michael','Ray',     'M'),
(5, 'Carol',  'Baker',   'F');

select employeeid, gender, 
case 
when gender = 'F' then 'Female'
when gender = 'M' then 'Male'
else 'Not Available'
end as 'genderFullForm'
from Employees;

select CustomerID, concat(trim(FirstName)," ",trim(LastName)),
case
when Country = "Germany" then "DE"
when Country = "USA" then "US"
else "n/a"
end as CountryAbbr
from Customers;

