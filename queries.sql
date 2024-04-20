-- write your queries here
SELECT * FROM owners o FULL JOIN vehicles v on v.owner_id = o.id;

SELECT first_name, last_name, COUNT(*) AS num_of_vehicles FROM owners o JOIN vehicles v on v.owner_id = o.id GROUP BY first_name, last_name ORDER BY first_name ASC;

SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(*) AS count 
FROM OWNERS o JOIN vehicles v on v.owner_id = o.id GROUP BY  first_name, last_name 
HAVING ROUND(AVG(price)) > 10000 AND COUNT(*) > 1 
ORDER BY  first_name DESC;