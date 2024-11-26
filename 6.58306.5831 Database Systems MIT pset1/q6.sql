-- Q6
-- Your query goes here.
select station_name  ||  '|' || max("Total On") from
(select s.station_name, count(r.total_ons) as "Total On" -- over(partition by r.station_id)
from rail_ridership as r
join stations as s
on s.station_id = r.station_id
where season like "%2018"
group by s.station_id
order by r.total_offs asc) as summer
;

