-- Write your query below
SELECT w.name AS warehouse_name, SUM((w.units * p.volume)) AS volume
FROM warehouse w
LEFT JOIN (
    SELECT product_id, (width * length * height) AS volume
    FROM products
) AS p ON p.product_id = w.product_id
GROUP BY w.name

