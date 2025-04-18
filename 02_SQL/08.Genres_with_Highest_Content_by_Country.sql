-- Which genres have the highest content volume by country

SELECT 
    "Type",
    country,
    COUNT(*)
FROM netflix_cleaned
WHERE country is not null
GROUP BY 
    "Type",
    country
ORDER BY 
    "Type",
    COUNT(*) DESC;

