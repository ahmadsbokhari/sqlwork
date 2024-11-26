-- Q8
-- Your query goes here.
SELECT station_name, sum(total_ons) 
from rail_ridership
join stations on stations.station_id = rail_ridership.station_id
where rail_ridership.line_id = "orange" and season like "% 2018" and time_period_id like "%01" and direction=0
group by stations.station_id
HAVING sum(total_ons)>
(
select avg(total_ons) 
from rail_ridership
where line_id = "orange" and season = "Fall 2018" and time_period_id = "time_period_01" and direction=0
) 

order by total_ons DESC, station_name ASC
;

