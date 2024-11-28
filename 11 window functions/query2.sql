SELECT emp_no, department, salary, AVG(salary) OVER(PARTITION BY department) AS depart_avg, AVG(salary) OVER() AS company_avg
FROM employees;


SELECT emp_no, department, salary, SUM(salary) OVER(PARTITION BY department) AS depart_pay, SUM(salary) OVER() AS company_pay
FROM employees;