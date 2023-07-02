# Write your MySQL query statement below
SELECT a.id id
from weather a join weather b
on datediff(a.recordDate,b.recordDate)= 1
where a.temperature > b.temperature;