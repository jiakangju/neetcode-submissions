-- Write your query below
SELECT v1.name AS left_operand, operator, v2.name AS right_operand, CASE WHEN operator = '>' THEN v1.value > v2.value WHEN operator = '=' THEN v1.value = v2.value ELSE v1.value < v2.value END AS value
FROM expressions e
LEFT JOIN variables v1 ON e.left_operand = v1.name
LEFT JOIN variables v2 ON e.right_operand = v2.name