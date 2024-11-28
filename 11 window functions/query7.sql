SELECT 
    emp_no, 
    department, 
    salary,
    salary - LAG(salary) OVER(ORDER BY salary DESC) as salary_diff
FROM employees;


-- Retrieves the salary value from the previous row in the sequence defined by the ORDER BY salary DESC clause.