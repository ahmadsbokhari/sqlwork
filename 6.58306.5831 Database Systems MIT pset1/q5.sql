-- Q5
-- Your query goes here.

SELECT 
    stations.station_name || '|' || rail_ridership.season || '|' || 
    AVG(rail_ridership.number_service_days) OVER(partition by stations.station_name, rail_ridership.season) AS output
FROM 
    rail_ridership
JOIN 
    stations 
ON 
    stations.station_id = rail_ridership.station_id
GROUP BY 
 rail_ridership.season,station_name
ORDER BY 
    AVG(DISTINCT rail_ridership.number_service_days) DESC, 
    rail_ridership.season ASC, 
    stations.station_name ASC;

	/*
SELECT season, avg(number_service_days) 
FROM rail_ridership 
where station_id = "place-sstat" 
group by season
limit 100 ;*/
