-- sql_hr table:
-- select all the employees whose earn are more than avg

SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary)
                FROM employees);