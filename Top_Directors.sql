-- Which directors have the most content on Netflix

SELECT
    director,
    COUNT(*) AS title_count
FROM netflix_cleaned
WHERE director is not null
GROUP BY director
ORDER BY title_count DESC;
