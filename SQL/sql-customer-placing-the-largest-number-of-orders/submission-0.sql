-- Write your query below
SELECT customer_number
FROM (
    SELECT customer_number, count(customer_number) AS order_cnt
    FROM orders
    GROUP BY customer_number
    ORDER BY order_cnt DESC
    LIMIT 1
)