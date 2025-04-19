-- Which genres have the highest content volume by country
WITH unnested_data AS (
    SELECT
        UNNEST(STRING_TO_ARRAY(country, ',')) AS country,
        "Type"
    FROM netflix_cleaned
),
genre_counts AS (
    SELECT
        country,
        "Type" as genre,
        COUNT(*) AS count
    FROM unnested_data 
    GROUP BY country, genre
),
ranked_genres AS (
    SELECT
        country,
        genre,
        count,
        RANK() OVER (PARTITION BY country ORDER BY count DESC) AS rank
    FROM genre_counts
)
SELECT
    country,
    genre
FROM ranked_genres
WHERE rank = 1
ORDER BY count DESC
LIMIT 324
OFFSET 4;