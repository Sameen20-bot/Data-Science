use intro_sql;

show tables;

select count(*) from indrive_pakistan;

alter table indrive_pakistan rename column `ï»¿Date` to `Date`;

describe indrive_pakistan;

-- How many rides?
select `Vehicle type`, count(*) as `total_bookings`
from indrive_pakistan
group by `Vehicle type`;

-- Show only the vehicle types that have more than 1000 bookings.
select `Vehicle type`, count(*) as `total_bookings`
from indrive_pakistan
group by `Vehicle type`
having count(*) > 1000;

-- Find the average booking value for each vehicle type, highest first. Round it to 2 decimals.

select `Vehicle type`, round(avg(nullif(`Booking Value`,'')),2) as Average_booking
from indrive_pakistan
group by `Vehicle type`
order by Average_booking desc;