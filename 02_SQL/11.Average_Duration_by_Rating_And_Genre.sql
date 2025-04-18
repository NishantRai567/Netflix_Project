-- What is the average duration of movies by genre

SELECT
    "Type" AS genre,
    round(AVG(duration_value),2) as avg_duration
FROM netflix_cleaned
WHERE category='Movie'
GROUP BY "Type";

-- What is the average duration of movies by rating

SELECT
    rating,
    round(AVG(duration_value),2) as avg_duration
FROM netflix_cleaned
WHERE category='Movie' and rating is not null
GROUP BY rating;