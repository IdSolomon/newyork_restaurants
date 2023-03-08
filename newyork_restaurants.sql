-- Getting a feel for the nomnom table and figuring out the column names --

SELECT * FROM nomnom;

-- What are the distinct neighborhoods? --

SELECT DISTINCT neighborhood
FROM nomnom;

-- What are the distinct cuisine types? --

SELECT DISTINCT cuisine
FROM nomnom;

-- What are the options for Chinese takeout? --

SELECT * 
FROM nomnom
WHERE cuisine = 'Chinese';

-- Return all the restaurants with reviews of 4 and above --

SELECT *
FROM nomnom
WHERE review >= 4;

-- Return all the restaurants that are Italian and $$$ --

SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
  AND price = '$$$';

-- Find a restaurant that contains the word 'meatball' in it --

SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

-- Find close by restaurants in Midtown, Downtown, or Chinatown --

SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
  OR neighborhood = 'Downtown'
  OR neighborhood = 'Chinatown';

-- Find all the restaurants that have an empty health grade value --

SELECT *
FROM nomnom
WHERE health IS NULL;

-- Find the top 10 restaurants ranking based on reviews --

SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

-- Use a CASE statement to change the rating system --

SELECT name,
  CASE
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4 THEN 'Excellent'
    WHEN review > 3 THEN 'Good'
    WHEN review > 2 THEN 'Fair'
    ELSE 'Poor'
  END AS 'Review'
FROM nomnom;




  