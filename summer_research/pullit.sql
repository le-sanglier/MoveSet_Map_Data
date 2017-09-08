SELECT timestamp, value FROM Measurements WHERE metric_id = 1 AND sensor_id = 3;

SELECT timestamp, value FROM Measurements WHERE metric_id = 1 AND sensor_id = 3;


SELECT M.timestamp, M.value AS throughput, LA1.value AS lat_deg, LA2.value AS lat_min, LO1.value AS long_deg, LO2.value AS long_min
FROM Measurements AS M, Measurements AS LA1, Measurements AS LA2, Measurements AS LO1, Measurements AS LO2
WHERE M.metric_id = 1 AND M.sensor_id = 3
AND LA1.metric_id = 14 AND LA1.sensor_id = 6
AND  LA2.metric_id = 17 AND LA2.sensor_id = 6
AND LO1.metric_id = 15 AND LO1.sensor_id = 6
AND LO2.metric_id = 18 AND LO2.sensor_id = 6;

SELECT * FROM Measurements WHERE metric_id = 1 AND sensor_id = 3; 

SELECT M.timestamp, M.value
FROM Measurements AS M
WHERE M.metric_id = 17 AND M.sensor_id = 6;