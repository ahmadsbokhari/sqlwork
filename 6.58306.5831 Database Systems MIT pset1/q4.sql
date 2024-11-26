-- Q4
-- Your query goes here.
select routes.route_id, routes.direction, routes.route_name, stations.station_id, station_orders.distance_from_last_station_miles
from routes
join station_orders on station_orders.route_id=routes.route_id
join stations on stations.station_id=station_orders.station_id
where not line_id="green"
order by distance_from_last_station_miles asc
;
