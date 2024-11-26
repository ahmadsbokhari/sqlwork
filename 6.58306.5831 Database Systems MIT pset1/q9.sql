-- Q9
-- Your query goes here.

SELECT 
	r1.route_id,r2.route_id,
	routes.route_name, routes.route_name, r1.station_id, r2.station_id,
	count(r1.station_id) as "common stations"
FROM 
	station_orders r1
JOIN 
	station_orders r2 
ON 
	r1.route_id < r2.route_id 
	AND r1.station_id = r2.station_id
	
join 
	routes
	on r1.route_id= routes.route_id
join routes as s2
on s2.route_id = r2.route_id
group by r1.route_id,r2.route_id
order by "common stations" desc, r1.route_id, r2.route_id asc
;