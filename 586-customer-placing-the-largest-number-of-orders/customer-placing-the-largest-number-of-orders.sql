/* Write your PL/SQL query statement below */
SELECT customer_number
FROM (
    SELECT customer_number, count(*) AS cnt 
    FROM Orders 
    GROUP BY customer_number
    ORDER BY cnt DESC
)
WHERE ROWNUM = 1;