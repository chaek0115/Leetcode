/* Write your PL/SQL query statement below */
SELECT 
    v.customer_id,
    count(CASE WHEN t.transaction_id IS NULL OR t.transaction_id = 0 THEN 1 END) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id 
GROUP BY v.customer_id 
HAVING count(CASE WHEN t.transaction_id IS NULL OR t.transaction_id = 0 THEN 1 END) > 0 ;
