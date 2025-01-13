-- Cyclistic Bike Share Data Analysis

-- 1. Summary Statistics

-- Calculate Minimum and Maximum Ride Length
SELECT 
    MIN(ride_length_seconds) AS min_ride_length, 
    MAX(ride_length_seconds) AS max_ride_length
FROM 
    `your_table_name`;

-- 2. Key Metrics

-- Calculate Total Rides by Member Type
SELECT 
    member_casual,
    COUNT(*) AS total_rides
FROM 
    `your_table_name`
GROUP BY 
    member_casual;

-- Calculate Average Ride Length by Member Type
SELECT 
    member_casual,
    AVG(ride_length_seconds) AS avg_ride_length
FROM 
    `your_table_name`
GROUP BY 
    member_casual;

-- 3. User Behavior Analysis

-- Calculate Average Ride Length by Day of the Week for All Riders
SELECT 
    EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,
    AVG(ride_length_seconds) AS avg_ride_length_all_riders
FROM 
    `your_table_name`
GROUP BY 
    day_of_week
ORDER BY 
    day_of_week;

-- Calculate Average Ride Length by Day of the Week for Members
SELECT 
    EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,
    AVG(ride_length_seconds) AS avg_ride_length_members
FROM 
    `your_table_name`
WHERE 
    member_casual = 'member'
GROUP BY 
    day_of_week
ORDER BY 
    day_of_week;

-- Calculate Average Ride Length by Day of the Week for Casual Riders
SELECT 
    EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,
    AVG(ride_length_seconds) AS avg_ride_length_casual
FROM 
    `your_table_name`
WHERE 
    member_casual = 'casual'
GROUP BY 
    day_of_week
ORDER BY 
    day_of_week;

-- Calculate Average Ride Length by Month for All Riders
SELECT 
    EXTRACT(MONTH FROM started_at) AS month,
    AVG(ride_length_seconds) AS avg_ride_length_all_riders
FROM 
    `your_table_name`
GROUP BY 
    month
ORDER BY 
    month;

-- Calculate Average Ride Length by Month for Members
SELECT 
    EXTRACT(MONTH FROM started_at) AS month,
    AVG(ride_length_seconds) AS avg_ride_length_members
FROM 
    `your_table_name`
WHERE 
    member_casual = 'member'
GROUP BY 
    month
ORDER BY 
    month;

-- Calculate Average Ride Length by Month for Casual Riders
SELECT 
    EXTRACT(MONTH FROM started_at) AS month,
    AVG(ride_length_seconds) AS avg_ride_length_casual
FROM 
    `your_table_name`
WHERE 
    member_casual = 'casual'
GROUP BY 
    month
ORDER BY 
    month;