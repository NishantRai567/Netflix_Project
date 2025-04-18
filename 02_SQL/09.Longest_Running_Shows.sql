-- Which TV Shows have the longest run

SELECT
    title,
    rank() over (order by duration_value desc) as season_rank 
FROM netflix_cleaned
WHERE category='TV Show' 
LIMIT 10;  