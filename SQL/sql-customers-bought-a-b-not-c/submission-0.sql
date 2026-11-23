-- Write your query below
SELECT c.customer_id, c.customer_name
FROM customers c
WHERE customer_id IN (SELECT DISTINCT customer_id FROM orders WHERE product_name = 'A') AND customer_id IN (SELECT DISTINCT customer_id FROM orders WHERE product_name = 'B') AND customer_id NOT IN (SELECT DISTINCT customer_id FROM orders WHERE product_name = 'C')  
ORDER BY customer_name