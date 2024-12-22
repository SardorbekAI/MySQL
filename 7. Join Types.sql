-- Joins

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT dem.employee_id, sal.first_name, dem.age
FROM employee_demographics dem
INNER JOIN employee_salary sal #faqat ikkalasida borlarini chiqaradi
	ON sal.employee_id = dem.employee_id 
;

SELECT *
FROM employee_demographics dem
LEFT JOIN employee_salary sal #chap tomondagini hammasini oladi va solishtiradi
	ON sal.employee_id = dem.employee_id 
;

SELECT *
FROM employee_demographics dem
RIGHT JOIN employee_salary sal #o'ng tomondagini hammasini oladi va solishtiradi
	ON sal.employee_id = dem.employee_id 
;


-- Self Join
SELECT *
FROM employee_salary sal1
RIGHT JOIN employee_salary sal2 #o'ng tomondagini hammasini oladi va solishtiradi
	ON sal1.employee_id = sal2.employee_id 
;

-- Multiple Join

SELECT *
FROM employee_demographics dem
JOIN employee_salary sal
	ON sal.employee_id = dem.employee_id 
JOIN parks_departments dep
	ON sal.dept_id = dep.department_id #bir-biriga o'xshash id lar bilan ulab ketiladi
;


