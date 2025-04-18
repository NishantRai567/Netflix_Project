-- How has Netflix's intenational content grown over time

SELECT 
    EXTRACT(YEAR FROM clean_release_date) AS year,
    COUNT(DISTINCT(country)) AS unique_countries,
    COUNT(*) FILTER (WHERE country != 'United States') as international_countries,
    COUNT(*) AS total_titles,
    ROUND(COUNT(*) FILTER (WHERE country != 'United States')*1.0/COUNT(*),2) AS international_ratio
FROM netflix_cleaned
WHERE EXTRACT(YEAR FROM clean_release_date) >2000
GROUP BY EXTRACT(YEAR FROM clean_release_date)
ORDER BY year;