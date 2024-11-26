-- Q3
-- Your query goes here.
SELECT season,lines.line_name,direction,total_ons
FROM rail_ridership
join time_periods on time_periods.time_period_id=rail_ridership.time_period_id
join lines on lines.line_id = rail_ridership.line_id
where rail_ridership.time_period_id="time_period_06" and time_periods.day_type="weekday"
limit 10;


--SELECT * FROM "time_periods";