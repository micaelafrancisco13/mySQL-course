USE sql_hr;

SELECT e.employee_id,
       e.first_name,
       m.first_name AS manager
FROM employees e -- E for employee
         JOIN employees m -- M for manager, manager is also an employee
              ON e.reports_to = m.employee_id

-- IMPORTANT:
-- for line 8, since "reports_to" is the ID of the manager,
-- think of it this way:
-- E.reports_to -> an employee reports to
-- M.employee_id -> his/her manager
