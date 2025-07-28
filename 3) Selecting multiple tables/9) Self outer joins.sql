USE sql_hr;

SELECT E.employee_id,
       E.first_name AS employee_first_name,
       M.first_name AS manager_first_name
FROM employees E
         LEFT JOIN employees M -- returns all the employees whether they have managers or not
                   ON E.reports_to = M.employee_id
