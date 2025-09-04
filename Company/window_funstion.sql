

SELECT department, salary,
    ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_num,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank_num,
    DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank_num
FROM empl_1;


SELECT department, salary,
    SUM(salary) OVER (PARTITION BY department) AS dept_total_salary,
    AVG(salary) OVER (PARTITION BY department) AS dept_avg_salary,
    MAX(salary) OVER (PARTITION BY department ORDER BY salary) as dept_total_salary
FROM empl_1;



SELECT department, salary,
    LAG(salary) OVER (PARTITION BY department ORDER BY salary) AS prev_salary,
    LEAD(salary) OVER (PARTITION BY department ORDER BY salary) AS next_salary
FROM empl_1;


