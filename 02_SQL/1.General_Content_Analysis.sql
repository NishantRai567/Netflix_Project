-- Number of Movies vs TV Shows

SELECT 
    category,
    COUNT(show_id) as frequency 
FROM 
    netflix_cleaned
GROUP BY category;

-- Most Common Content Ratings

SELECT
    rating,
    COUNT(show_id) as frequency
FROM 
    netflix_cleaned
GROUP BY rating
ORDER BY COUNT(show_id) desc;
