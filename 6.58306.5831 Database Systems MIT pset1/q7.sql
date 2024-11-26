-- Q7
-- Your query goes here.
-- Q6
-- Your query goes here.
select line_id,time_period,station_name,sum(total_offs) as "Total Off"
from rail_ridership
join stations on stations.station_id = rail_ridership.station_id
join time_periods on rail_ridership.time_period_id = time_periods.time_period_id
group by rail_ridership.station_id, rail_ridership.time_period_id
order by "Total Off" desc, line_id,time_period,station_name asc
;