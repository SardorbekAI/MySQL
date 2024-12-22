-- Unions

SELECT age, gender
FROM employee_demographics
UNION # Hammasini bitta ustunga yozadi
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name
FROM employee_demographics
UNION # faqat ustunlar nomlari bir xil bo'lsagina ustma ust yozadi
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Hight Salary' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name;














