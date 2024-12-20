-- Group by

SELECT gender, AVG(age), MAX(age), MIN(age), SUM(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT *
FROM employee_demographics
ORDER BY gender, age; # avval jinsi, keyin yoshi bo'yicha saralash