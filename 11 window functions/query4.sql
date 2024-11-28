SELECT emp_no, department, salary,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) as dept_rpw_number,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) as dept_salary_rank,
RANK() OVER(ORDER BY salary DESC) as overall_salary_rank,
DENSE_RANK() OVER(ORDER BY salary DESC) as overall_dense_rank
FROM employees ORDER BY overall_salary_rank;