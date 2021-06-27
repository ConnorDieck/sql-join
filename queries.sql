-- write your queries here
-- query 1 --
SELECT * FROM owners LEFT JOIN vehicles ON vehicles.owner_id = owners.id;

-- query 2 --
SELECT first_name, last_name, COUNT(vehicles.id) FROM owners LEFT JOIN vehicles ON vehicles.owner_id = owners.id GROUP BY first_name, last_name HAVING COUNT(vehicles.id) > 0 ORDER BY first_name;

-- query 3 --
SELECT first_name, last_name, ROUND(AVG(vehicles.price)) AS avg_price, COUNT(vehicles.id) FROM owners LEFT JOIN vehicles ON vehicles.owner_id = owners.id GROUP BY first_name, last_name HAVING COUNT(vehicles.id) > 0 AND ROUND(AVG(vehicles.price)) > 10000 ORDER BY first_name DESC;