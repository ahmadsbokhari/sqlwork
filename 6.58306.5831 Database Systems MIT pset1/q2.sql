-- Q2
-- Your query goes here.
SELECT line_name,direction_desc,first_station_id,last_station_id
 from routes 
 join lines on
 lines.line_id=routes.line_id
 limit 5
 ;