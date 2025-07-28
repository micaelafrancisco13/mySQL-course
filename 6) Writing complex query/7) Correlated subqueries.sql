-- select employees whose salary > average in their office

-- for each employee,
--     calculate the average salary of his office
--     return that employee if his salary > average salary of 
--     his office
SELECT *
FROM employees e
WHERE salary > (SELECT AVG(salary)
                FROM employees
                WHERE office_id = e.office_id)
ORDER BY office_id ASC
