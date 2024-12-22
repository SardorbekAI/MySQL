-- Limit and Aliasing

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3, 2  # (start, count) nechanchi id raqamdan boshlab nechta chiqarishini beriladi
;

-- Aliasing

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;
















