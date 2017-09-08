CREATE VIEW `lat_long` AS
    SELECT 
        LA1.timestamp,
        LA1.value AS lat_deg,
        LA2.value AS lat_min,
        LO1.value AS long_deg,
        LO2.value AS long_min
    FROM
        Measurements AS LA1,
        Measurements AS LA2,
        Measurements AS LO1,
        Measurements AS LO2
    WHERE
        LA1.metric_id = 14 AND LA1.sensor_id = 6
            AND LA2.metric_id = 17
            AND LA2.sensor_id = 6
            AND LO1.metric_id = 15
            AND LO1.sensor_id = 6
            AND LO2.metric_id = 18
            AND LO2.sensor_id = 6;
