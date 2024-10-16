/* Write your PL/SQL query statement below */
SELECT 
    u.unique_id,
    e.name
FROM EmployeeUNI u
RIGHT JOIN Employees e ON u.id = e.id;