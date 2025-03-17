-- Subqueries
# WHERE bilan
#dept_id lari 1 ga teng bo'lgan insonlarning ro'yxati
SELECT *
FROM employee_demographics
WHERE employee_id IN (
					SELECT employee_id
                    FROM employee_salary
                    WHERE dept_id = 1
            );


# SELECT bilan
#hamma hodimlarning o'rtacha oyligi
SELECT first_name, salary, ( SELECT AVG(salary)
							FROM employee_salary) AS avg_salary
FROM employee_salary
GROUP BY first_name, salary;


# FROM bilan
#faqat FROM dan kelgan ma'lumotlarni o'qish
SELECT gender, avg_age
FROM (
	SELECT gender, AVG(age) AS avg_age, MAX(age) AS max_age, MIN(age) AS min_age, COUNT(age) AS count_age
    FROM employee_demographics
    GROUP BY gender
) AS Gen_Table
GROUP BY gender;

