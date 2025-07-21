SHOW USER;

// Muestra el contenedor de la base de datos
SELECT SYS_CONTEXT('USERENV', 'CON_NAME') FROM dual;

SELECT * FROM hr.countries;

//SUBCONSULTAS
SELECT SUM(salary), department_id, (SELECT department_name FROM hr.departments dep WHERE emp.department_id = dep.department_id) DEPARTMENT FROM hr.employees emp GROUP BY department_id;

SELECT SUM(salary), department_id DEPARTMENT FROM hr.employees emp GROUP BY department_id;

SELECT employee_id, first_name, (SELECT department_id FROM hr.job_history JH WHERE JH.employee_id = E.employee_id) DEPARTAMENTO FROM employees E;

// OPERADORES

SELECT job_title FROM hr.jobs WHERE max_salary <ALL (SELECT min_salary FROM hr.jobs);

//Joins

Select country_name, region_name From hr.countries Natural Join hr.regions;

Select country_name, region_name From hr.countries natural Left Join hr.regions;

Select country_name, region_name From hr.countries Natural Right Join hr.regions;

SELECT first_name AS nombre, department_name AS departamento FROM hr.employees e LEFT JOIN hr.departments d ON e.department_id = d.department_id;

SELECT first_name AS nombre, department_name AS departamento FROM employees e LEFT JOIN departments d ON e.department_id = d.department_id WHERE d.department_id IS NOT NULL;

SELECT first_name AS nombre, department_name AS departamento FROM employees e LEFT JOIN departments d ON e.department_id = d.department_id WHERE d.department_id IS NULL;

SELECT first_name AS nombre, department_name AS departamento FROM hr.employees e RIGHT JOIN hr.departments d ON e.department_id = d.department_id;

SELECT first_name AS nombre, department_name AS departamento FROM employees e RIGHT JOIN departments d ON e.department_id = d.department_id WHERE e.department_id IS NOT NULL;

SELECT first_name AS nombre, department_name AS departamento FROM employees e RIGHT JOIN departments d ON e.department_id = d.department_id WHERE e.department_id IS NULL;

SELECT first_name AS nombre, department_name AS departamento FROM employees e FULL JOIN departments d ON e.department_id = d.department_id;