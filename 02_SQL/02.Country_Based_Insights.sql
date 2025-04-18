-- Top 10 Countries with Most Content

SELECT
    country,
    COUNT(show_id) as frequency
FROM 
    netflix_cleaned
WHERE 
    country is not null
GROUP BY 
    country
ORDER BY frequency DESC
LIMIT 10;

-- Top 10 Countries for TV Shows onlu

SELECT 
    country,
    COUNT(show_id) as frequency
FROM 
    netflix_cleaned
WHERE 
    category='TV Show'
GROUP BY 
    country
ORDER BY frequency DESC
LIMIT 10;

