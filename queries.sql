-- First Query

SELECT * 
FROM owners o
FUll JOIN vehicles v
ON o.id = v.owner_id;

-- Second Query

SELECT first_name, last_name, COUNT(owner_id) as count
FROM owners o
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY (first_name, last_name)
ORDER BY first_name;

-- Third Query

SELECT first_name, last_name, ROUND(AVG(price)) as average_price, COUNT(owner_id)
FROM owners o
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY first_name, last_name
HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;