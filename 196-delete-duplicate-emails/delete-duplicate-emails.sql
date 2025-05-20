/* Write your PL/SQL query statement below */
DELETE FROM Person p 
WHERE p.id NOT IN (
    SELECT MIN(id)
    FROM Person
    GROUP BY email
);