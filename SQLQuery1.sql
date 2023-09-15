with hotels as(
select * from Revenue_2018
union
select * from Revenue_2019
union
select * from Revenue_2020)

select arrival_date_year,
hotel,
round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as revenue
from hotels
group by hotel,arrival_date_year


