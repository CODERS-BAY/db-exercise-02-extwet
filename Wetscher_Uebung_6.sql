SELECT employee_id, last_name, JOB_ID, hire_date AS STARTDATE From employees;

SELECT DISTINCT job_id FROM employees;

SELECT employee_id AS 'Emp #', last_name AS Employee, JOB_ID AS Job, hire_date AS 'Hire Date' From employees;

SELECT last_name, salary FROM employees WHERE salary > 12000;

SELECT last_name, department_id FROM employees WHERE employee_id = 176;

SELECT employees.last_name, job_history.job_id, job_history.start_date FROM employees, job_history
GROUP BY start_date ASC;

SELECT e.last_name, d.department_id FROM employees e, departments d WHERE d.department_id = 20 ORDER BY e.hire_date ASC;

SELECT last_name AS Employee, salary AS 'Monthly Salary', commission_pct AS Commission FROM employees WHERE commission_pct =0.2;

