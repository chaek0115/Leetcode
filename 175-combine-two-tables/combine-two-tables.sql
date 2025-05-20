/* Write your PL/SQL query statement below */
SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p
LEFT OUTER JOIN Address a
ON p.personId = a.personId;
