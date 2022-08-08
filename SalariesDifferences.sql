/*
Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments.
Output just the absolute difference in salaries.

Link: https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=1

Approach:
-- difference
-- two different querys, one for the highest salary in marketing and other for engineering and then rest between them
*/

select distinct(select max(e.salary)
from db_employee e
inner join db_dept d 
    on e.department_id = d.id
where d.id = '4')
-
(select max(e.salary)
from db_employee e
inner join db_dept d 
    on e.department_id = d.id
where d.id = '1') as difference
from db_employee

