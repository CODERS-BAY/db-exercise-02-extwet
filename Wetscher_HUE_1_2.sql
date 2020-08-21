SELECT * FROM employees;

SELECT first_name, last_name FROM employees;

SELECT last_name FROM employees ORDER BY last_name ASC;

SELECT DISTINCT manager_id FROM employees WHERE manager_id is not null;

SELECT DISTINCT last_name FROM employees WHERE manager_id is not null AND manager_id = 100;

SELECT country_name FROM countries;

SELECT city, country_id FROM locations;

SELECT region_name as REGION FROM regions;

SELECT job_id, job_title FROM jobs order by job_title ASC;

SELECT DISTINCT location_id FROM departments; -- distinct heisst nur einmal

SELECT count(*), manager_id FROM employees GROUP BY manager_id HAVING count(*) > 1;

SELECT AVG(salary) AS Durchschnittsgehalt FROM employees;

SELECT sum(salary),job_id FROM employees GROUP BY job_id ORDER BY SUM(salary) DESC;

SELECT concat(first_name, ' ', last_name)FROM employees;

SELECT concat(LCASE (first_name), " ", ucase(last_name)) FROM employees;

SELECT CONCAT_WS(' ',first_name, last_name, job_id) AS NAME FROM employees;

SELECT UCASE(first_name)FROM employees;

SELECT LCASE(first_name), UCASE(last_name) FROM employees;

SELECT LENGTH (first_name), first_name FROM employees;

SELECT ROUND (salary,2), first_name FROM employees;

SELECT NOW() FROM employees; -- wo größer wie NOW, datum wird dazugespeichert

SELECT first_name, last_name FROM employees WHERE manager_id <> 100;

SELECT first_name, last_name FROM employees WHERE manager_id IS NOT NULL;

SELECT first_name, last_name, manager_id FROM employees WHERE manager_id <> 103 AND manager_id > 102;

SELECT first_name, last_name, manager_id FROM employees WHERE manager_id <> 103 OR manager_id > 102;

SELECT first_name FROM employees WHERE first_name LIKE ('S%');

SELECT first_name FROM employees WHERE first_name LIKE ('S___E%');

SELECT first_name, last_name FROM employees UNION SELECT job_id, job_title FROM jobs; -- bei beiden select muss die gleiche ANzahl der ABfrage sein

-- AUFGABEN

SELECT first_name FROM employees WHERE first_name LIKE ('K%');

SELECT first_name FROM employees WHERE first_name <> 'Peter' OR first_name <> 'Eleni';

SELECT first_name, last_name, salary FROM employees WHERE salary > 10000;

SELECT department_name,location_id AS ABTEILUNG FROM departments  WHERE location_id = 1700;

SELECT phone_number, last_name FROM employees WHERE phone_number LIKE ('%121%'); -- %% ist nur für chars, also keine Zahlen, telefon wird immer als Buchstaben gespeichert

-- JOINS, mehrere Tabellen werden in einer Abfrage verbunden

SELECT * FROM employees;

SELECT employees.last_name, departments.department_name FROM employees JOIN departments ON employees.department_id = departments.department_id;
-- hier ist GRANT nicht drinnen
SELECT employees.last_name, departments.department_name FROM employees LEFT JOIN departments ON employees.department_id = departments.department_id;
-- hier ist GRANT mit <null> drinnen
SELECT employees.last_name, departments.department_name
FROM employees
    RIGHT JOIN departments ON employees.department_id = departments.department_id;
-- hier sind die Abteilungen zuerst angegeben

-- zur nächsten Tabelle wandern, Variablen setzten in den Hauptlisten einfach eine variable mit Leerzeichen
SELECT d.department_name, l.postal_code, l.city, c.country_name
FROM departments d
JOIN locations l ON d.location_id=l.location_id
JOIN countries c ON l.country_id=c.country_id;

SELECT e.first_name, e.last_name, m.last_name
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id;

-- AUFGABE dazu

SELECT c.country_name, r.region_name
FROM countries c
JOIN regions r;

SELECT first_name, last_name, department_name
FROM employees
JOIN departments d on employees.department_id = d.department_id;

SELECT e.first_name, e.last_name, jh.start_date, jh.end_date
FROM employees e
JOIN job_history jh on e.employee_id = jh.employee_id;

SELECT start_date, end_date, job_title
    FROM employees.job_history
JOIN jobs j on job_history.job_id = j.job_id;

SELECT e.first_name, e.last_name, jh.start_date, jh.end_date, j.job_title
FROM employees e
JOIN job_history jh on e.employee_id = jh.employee_id
JOIN jobs j on jh.job_id = j.job_id;



















