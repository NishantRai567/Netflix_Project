-- Average Movie Duration

SELECT
    ROUND(AVG(duration_value),2) AS average_movie_duration
FROM
    netflix_cleaned
WHERE 
    category='Movie';


-- Distribution of Seasons for TV Shows

SELECT 
    duration_value AS num_of_seasons,
    COUNT(*) AS FREQUENCY
FROM
    netflix_cleaned
WHERE 
    category='TV Show'
GROUP BY 
    duration_value
ORDER BY 
     num_of_seasons;
