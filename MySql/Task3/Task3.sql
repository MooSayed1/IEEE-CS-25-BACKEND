
-- First
SELECT name 
FROM CITY
where countrycode = 'JPN'


-- Second
SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
FROM STATION;

-- Third
SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT LIKE 'A%' 
AND CITY NOT LIKE 'E%' 
AND CITY NOT LIKE 'I%' 
AND CITY NOT LIKE 'O%' 
AND CITY NOT LIKE 'U%';


-- Fourth

SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT LIKE '%A' 
AND CITY NOT LIKE '%E' 
AND CITY NOT LIKE '%I' 
AND CITY NOT LIKE '%O' 
AND CITY NOT LIKE '%U';


-- Fifth
SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT LIKE 'A%' 
AND CITY NOT LIKE 'E%' 
AND CITY NOT LIKE 'I%' 
AND CITY NOT LIKE 'O%' 
AND CITY NOT LIKE 'U%'
AND CITY NOT LIKE '%A' 
AND CITY NOT LIKE '%E' 
AND CITY NOT LIKE '%I' 
AND CITY NOT LIKE '%O' 
AND CITY NOT LIKE '%U';

-- Sixth
SELECT AVG(population)
FROM CITY

-- Seventh
SELECT sender_id, COUNT(*) AS message_count
FROM messages
WHERE sent_date >= '2022-08-01' 
AND sent_date < '2022-09-01'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2;

-- Eighth
SELECT app_id, 
	ROUND((SUM(CASE WHEN event_type = 'click' THEN 1 ELSE 0 END) * 100.0) / 
	NULLIF(SUM(CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END), 0),2) AS click_through_rate
FROM events
WHERE timestamp >= '2022-01-01' 
AND timestamp < '2023-01-01'
GROUP BY app_id;
