-- Q10
-- Your query goes here.

select stations.station_name, lines.line_name,(a-b)/a as ans

FROM
(
SELECT
station_id,line_id,
cast(sum(average_flow) as real) as a,
cast(sum(average_ons)+sum(average_offs) as real) as b

from 
rail_ridership
where season="Fall 2019"
group by station_id
) as flow

join lines on lines.line_id = flow.line_id
join stations on stations.station_id = flow.station_id
order by line_name asc
;