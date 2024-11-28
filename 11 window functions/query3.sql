SELECT emp_no, department, salary, 
SUM(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS depart_pay1,
SUM(salary) OVER(PARTITION BY department) AS depart_pay2
FROM employees;