-- Write your query below
SELECT name
FROM sales_person
WHERE sales_id NOT IN (
    SELECT s.sales_id 
    FROM sales_person s
    LEFT JOIN orders o ON s.sales_id = o.sales_id
    LEFT JOIN company c ON o.com_id = c.com_id
    WHERE c.name = 'CRIMSON'
)
