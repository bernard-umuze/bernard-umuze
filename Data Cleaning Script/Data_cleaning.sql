-- Cyclistic Bike-Share Data Cleaning Script

-- This script cleans the raw Cyclistic bike-share data by:
-- 1. Calculating ride length in seconds.
-- 2. Creating new columns for day of the week and month.
-- 3. Filtering out rides with negative ride durations.
-- 4. Handling NULL values in end_station_name.

CREATE TABLE cleaned_data AS
SELECT
    *,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length, 
    EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, 
    EXTRACT(MONTH FROM started_at) AS month,
    COALESCE(end_station_name, 'non_given') AS end_station_name 
FROM
    raw_data
WHERE
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0;

-- Add a column to flag missing end_lat values
ALTER TABLE cleaned_data
ADD COLUMN end_lat_missing BOOLEAN;

UPDATE cleaned_data
SET end_lat_missing = (end_lat IS NULL);

-- Calculate and add ride_length column
ALTER TABLE cleaned_data
ADD COLUMN ride_length_seconds INT64;

UPDATE cleaned_data
SET ride_length_seconds = ride_length 
WHERE ride_length IS NOT NULL;

-- (Optional: Calculate ride_length in minutes)
-- ALTER TABLE cleaned_data
-- ADD COLUMN ride_length_minutes FLOAT64;

-- UPDATE cleaned_data
-- SET ride_length_minutes = ride_length_seconds / 60;