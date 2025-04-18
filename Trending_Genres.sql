-- What genres are trending over time

SELECT
    EXTRACT(YEAR FROM clean_release_date) AS year,
    "Type" AS genre,
    COUNT(*) AS title_count
FROM netflix_cleaned
WHERE EXTRACT(YEAR FROM clean_release_date)>2000
GROUP BY 
    EXTRACT(YEAR FROM clean_release_date),
    "Type"
ORDER BY
    EXTRACT(YEAR FROM clean_release_date),
    title_count DESC;

