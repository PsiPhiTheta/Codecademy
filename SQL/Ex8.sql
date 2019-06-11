SELECT * FROM trips;

SELECT * FROM riders;

SELECT * FROM cars;

SELECT * FROM riders
CROSS JOIN cars; -- not very useful

SELECT * FROM trips
LEFT JOIN riders
	ON trips.rider_id = riders.id;

SELECT * FROM trips
JOIN cars
	ON trips.car_id = cars.id;

SELECT AVG(cost) FROM trips;

WITH previous_query AS (
  SELECT * FROM riders
  UNION
  SELECT * FROM riders2
)
SELECT previous_query.first, previous_query.last FROM previous_query
WHERE total_trips < 500;

SELECT COUNT(*) FROM cars
WHERE status = 'active';

SELECT id, model FROM cars
ORDER BY trips_completed DESC
LIMIT 2;

