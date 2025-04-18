-- Running total of titles released per year

WITH release_year AS (
SELECT 
    EXTRACT(YEAR FROM clean_release_date) AS year,
    COUNT(*) as titles_per_year
FROM netflix_cleaned
WHERE EXTRACT(YEAR FROM clean_release_date)>2000
GROUP BY EXTRACT(YEAR FROM clean_release_date))

SELECT
    year,
    SUM(titles_per_year) over (ORDER BY year) as total_titles
FROM release_year
