SELECT *
FROM data_analyst_jobs;

--QUESTION 1 ANSWER: 1793
SELECT COUNT(*)
FROM data_analyst_jobs;

--QUESTION 2 look at first 10 rows; which company is associated with 10th row?
--ANSWER: XTO Land Data Analyst
SELECT *
FROM data_analyst_jobs
LIMIT 10;

--QUESTION 3 ANSWER: 21 3b: 27
SELECT COUNT(*)
FROM data_analyst_jobs 
WHERE location = 'TN' OR location = 'KY';

--QUESTION 4 ANSWER: 3
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > 4;

--QUESTION 5 ANSWER: 151
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

--QUESTION 6 
SELECT AVG(star_rating) AS avg_rating, 
		location AS state
FROM data_analyst_jobs
WHERE location IS NOT null
	AND location != 'USA'
	AND location != 'REMOTE'
GROUP BY location
ORDER BY avr_rating DESC NULLS LAST;

--QUESTION 7 ANSWER: 881
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;

--QUESTION 8 ANSWER: 230
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';

--QUESTION 9 
SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT null
GROUP BY company
ORDER BY avg_rating DESC;

--QUESTION 10 ANSWER: Unilever 4.1999998090000000

--QUESTION 11 ANSWER: 774
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';

--QUESTION 12 ANSWER: "Tableau"
SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' AND title NOT ILIKE '%Analytics%';

--Bonus ANSWER: 

SELECT domain, COUNT(title) AS hard_to_fill
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%' 
	AND days_since_posting >= 21 
	AND domain IS NOT null
GROUP BY domain
ORDER BY hard_to_fill DESC;


	


