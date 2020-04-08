--QUESTION 1 
--How many rows are in the data_analyst_jobs table?
/*SELECT COUNT (*)
FROM data_analyst_jobs;
--Answer: 1793 Rows*/

--QUESTION 2
--Write query to look at first 10 rows. 
--What company is associated with posting on the 10th row.
/*SELECT *
FROM data_analyst_jobs
LIMIT 10*/
--Answer: 10th posting is from ExxonMobil

--QUESTION 3
--How many posting are in TN?
/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN';*/
--Answer: 21 posts in TN

--How many in TN or KY?
/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';*/
--Answer 27 posts in TN or KY
--or WHERE location IN ('TN', 'KY')

--QUESTION 4
--How many postings in TN have a star rating of above 4?
/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN'
AND star_rating > 4;*/ 
--Answer: 3 posting in TN with star rating above 4

--QUESTION 5
--How many postings have review count between 500 and 1000?
/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE review_count
BETWEEN 500 AND 1000;*/
--ANSWER: 151 posts with review count between 500 and 1000

--QUESTION 6
--Show the average rating for each state. Which state is highest?
/*SELECT AVG(star_rating) AS avg_rating, location AS state
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC;*/
--ANSWER: NE has the highest average rating at 4.09

--QUESTION 7
--How many unique job titles in data_analyst_jobs?
/*SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs;*/
--ANSWER: 881 unique job titles

--QUESTION 8
--How many unique job titles are there in Caalifornia?
/*SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';*/
--ANSWER: 230 unique job titles in California

--QUESTION 9
--Name of each comany and star rating with more than 5000 reviews.
/*SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY company;*/
--ANSWER: 41 Companies with one null value--missing company name?

--QUESTION 10
--Sort from highest to lowest average star rating. Which company is highest?
/*SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY avg_rating DESC;*/
--ANSWER: 6 Companies are tied with 4.199 average star rating.

--QUESTION 11
--How many different job titles are there containing the word 'Analyst'?
--Remove 'count' to see different titles.
/*SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';*/
--ANSWER: 774 different job titles.

--QUESTION 12
--How many titles do not inculde Analyst or Analysis?
/*SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analy%';*/
--ANSWER: There are 4 postings that don't include Analyst or Analysis. 
--The jobs are for Tableau/Data Visualization.




