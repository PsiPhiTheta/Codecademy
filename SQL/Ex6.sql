SELECT * FROM startups;

SELECT COUNT(name) FROM startups;

SELECT SUM(valuation) FROM startups;

SELECT name, MAX(raised) FROM startups
WHERE stage = 'Seed';

SELECT name, MIN(founded) FROM startups;

SELECT AVG(valuation) FROM startups;

SELECT category, ROUND(AVG(valuation), 2) FROM startups
GROUP BY category;

SELECT category, ROUND(AVG(valuation), 2) FROM startups
GROUP BY category
ORDER BY 2 DESC;

SELECT category, COUNT(category) FROM startups
GROUP BY category;

SELECT category, COUNT(category) FROM startups
GROUP BY category
HAVING COUNT(category) > 3;

SELECT location, ROUND(AVG(employees), 2) FROM startups
GROUP BY location;

SELECT location, ROUND(AVG(employees), 2) FROM startups
GROUP BY location
HAVING AVG(employees) > 500;
