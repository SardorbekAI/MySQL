-- String Functions

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2; #ikkinchi ustundan tartiblang

SELECT first_name, UPPER(first_name), LOWER(first_name)
FROM employee_demographics;

SELECT first_name, UPPER(first_name), LOWER(first_name)
FROM employee_demographics;

#TRIM() bo'sh joylarni kesib tashlaydi

SELECT first_name, LEFT(first_name, 4), RIGHT(first_name, 3), SUBSTRING(first_name, 2, 3), birth_date, SUBSTRING(birth_date, 6, 2) AS birth_month # n dan boshlab n ta kesish
FROM employee_demographics;

SELECT first_name, REPLACE(first_name, 'a', 'b') # 'a' ni 'b' ba almashtirish
FROM employee_demographics;

SELECT first_name, LOCATE('n', first_name)
FROM employee_demographics;

SELECT first_name, last_name, CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics



