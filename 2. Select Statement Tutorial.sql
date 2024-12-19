SELECT * 
FROM parks_and_recreation.employee_demographics; #datani nomi bilan berilsa aniq topadi

SELECT first_name, last_name, birth_date, age, (age + 10) * 10 - 10
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name #duplikatsiyani yo'q ailadi
FROM parks_and_recreation.employee_demographics;