-- What genres are trending over time

WITH genre_counts as(
SELECT
    EXTRACT(YEAR FROM clean_release_date) as year,
    "Type" as genre,
    COUNT(*) as total_titles
FROM netflix_cleaned
WHERE EXTRACT(YEAR FROM clean_release_date)>2000
GROUP BY 
    EXTRACT(YEAR FROM clean_release_date),
    "Type"),
ranked_genres as(
SELECT
    year,
    genre,
    total_titles,
    rank() over (partition by year order by total_titles DESC) as genre_rank
FROM genre_counts
)
SELECT
    year,
    genre,
    total_titles
FROM ranked_genres
WHERE genre_rank=1
ORDER BY year,total_titles desc;
