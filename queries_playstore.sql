-- Comments in SQL Start with dash-dash --
--1 
SELECT * FROM analytics WHERE id = 1880;
--2
SELECT * FROM analytics WHERE last_updated = '08-01-2018';
--3
SELECT COUNT(*) FROM analytics WHERE category = 'FAMILY' OR category ='1972';
--4
SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;
--5
SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC;
--6
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;
--7
SELECT app_name, price, rating FROM analytics WHERE rating <3 ORDER BY price DESC LIMIT 1;
--8
SELECT * FROM analytics WHERE min_installs < 50 AND rating > 0 ORDER BY rating DESC;
--9
SELECT app_name FROM analytics WHERE rating <3 AND reviews > 10000;
--10
SELECT * FROM analytics WHERE price > 0.10 AND price < 1.00 ORDER BY reviews DESC LIMIT 10;
--11
SELECT app_name, last_updated FROM analytics WHERE last_updated = (SELECT MAX(last_updated) FROM analytics);
--12
SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);
--13
SELECT COUNT(reviews) FROM analytics;
--14
SELECT category, COUNT(*) FROM analytics GROUP BY category HAVING COUNT(*)>300;
--15
SELECT app_name, reviews, min_installs, min_installs/reviews as proportion FROM analytics where min_installs> 100000 ORDER BY proportion DESC LIMIT 1;
