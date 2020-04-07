/*--Question 1
SELECT COUNT (*)
FROM data_analyst_jobs;
--Answer: 1793 Rows*/

/*--Question 2
SELECT *
FROM data_analyst_jobs
LIMIT 10*/
--Answer: 10th posting is from ExxonMobil

--Question 3
/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN';*/
--Answer: 21 posts in TN

/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';*/
--Answer 27 posts in TN or KY

--QUESTION 4
/*SELECT *
FROM data_analyst_jobs
WHERE location = 'TN'
AND star_rating > 4;*/ 
--Answer: 3 posting in TN with star rating above 4

--QUESTION 5
/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE review_count
BETWEEN 500 AND 1000;*/
--ANSWER: 151 posts with review count between 500 and 1000

/*--QUESTION 6
SELECT AVG(star_rating) AS avg_rating, location AS state
FROM data_analyst_jobs
GROUP BY data_analyst_jobs.location;*/
--ANSWER: KS has the highest average rating at 4.09

--QUESTION 7
/*SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs;*/
--ANSWER: 881 unique job titles

--QUESTION 8
/*SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';*/
--ANSWER: 230 unique job titles in California

