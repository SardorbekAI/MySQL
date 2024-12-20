-- WHERE Clause

SELECT *
FROM employee_salary
WHERE first_name = 'Tom';  #Faqat Tom ismli ishchilarni chiqaradi


SELECT *
FROM employee_salary
WHERE salary > 50000;  #Oyligi 50 000 dan ko'p bo'lgan ishchilarni chiqaradi

SELECT *
FROM employee_demographics
WHERE gender != 'Female';  #Jinsi ayol bo'lmagan ishchilarni chiqaradi

-- AND OR NOT -- Logical operations
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male';  #Berilgan yildan katta va erkak ishchilarni chiqaradi 


SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male'; #Berilgan yildan katta yoki erkak ishchilarni chiqaradi 

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55; #Ismi Leslie va yoshi 44 bo'lgan yoki yoshi 55 dan katta bo'lganlar

-- LIKE Statement 
-- % and _
SELECT *
FROM employee_demographics
-- WHERE first_name LIKE 'A%' # A harfi bilan boshlanadigan ismlar 
WHERE first_name LIKE 'A__' # A harfidan keyin 2 ta belgisi bor ismlar 






















































