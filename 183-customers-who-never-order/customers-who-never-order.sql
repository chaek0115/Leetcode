/* Write your PL/SQL query statement below */
SELECT name as "Customers"
FROM Customers c
LEFT OUTER JOIN Orders o ON c.id = o.customerId
WHERE o.id IS NULL;