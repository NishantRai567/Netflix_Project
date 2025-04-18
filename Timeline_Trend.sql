-- Number of Releases per Year

SELECT 
    EXTRACT(YEAR FROM clean_release_date) AS release_year,
    COUNT(*) as title_count
FROM netflix_cleaned
WHERE 
   EXTRACT(YEAR FROM clean_release_date)>2000
GROUP BY 
    EXTRACT(YEAR FROM clean_release_date)
ORDER BY 
    EXTRACT(YEAR FROM clean_release_date)

