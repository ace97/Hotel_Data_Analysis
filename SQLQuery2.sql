with hotels as(
select * from Revenue_2018
union
select * from Revenue_2019
union
select * from Revenue_2020)

select *
from hotels
left join market_segment
on hotels.market_segment=market_segment.market_segment
left join meal_cost
on hotels.meal=meal_cost.meal