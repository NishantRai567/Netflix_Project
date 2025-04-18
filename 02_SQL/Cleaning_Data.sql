
-- Format date and split duration into duration value and unit

CREATE TABLE netflix_cleaned AS
SELECT 
  *,
  CAST(SPLIT_PART("duration", ' ', 1) AS INT) AS duration_value,
  SPLIT_PART("duration", ' ', 2) AS duration_unit,
  TO_DATE("release_date", 'Month DD, YYYY') AS clean_release_date
FROM raw_netflix_data;

-- Convert empty values to NULL

UPDATE netflix_cleaned SET 
  "title" = NULLIF("title", ''), 
  "director" = NULLIF("director", ''), 
  "Cast" = NULLIF("Cast", ''), 
  "country" = NULLIF("country", ''), 
  "rating" = NULLIF("rating", ''), 
  "duration" = NULLIF("duration", ''), 
  "Type" = NULLIF("Type", ''), 
  "description" = NULLIF("description", '')
WHERE 
  "title" = '' OR 
  "director" = '' OR 
  "Cast" = '' OR 
  "country" = '' OR 
  "rating" = '' OR 
  "duration" = '' OR 
  "Type" = '' OR 
  "description" = '';