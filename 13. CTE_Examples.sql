#simple AVG
SELECT AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON sal.employee_id = dem.employee_id;
   
#============================================= 

#subquery bilan AVG
SELECT AVG(avg_sal)
FROM (SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) AS example_subquery;   

#=============================================

#CTE haqida
#offitsialniyroq
WITH CTE_Example (Gender, AVG_sal, MAX_sal, MIN_sal, COUNT_sal) AS (
SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;

#=============================================

#Multi CTE
WITH CTE_Example AS (
SELECT employee_id, gender, birth_date
FROM employee_demographics
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS (
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id
    
;

-- Xulosa: Nega CTE ishlatish kerak?
-- ✅ 1️⃣ So‘rovlarni modular qiladi – kod o‘qilishi oson bo‘ladi.
-- ✅ 2️⃣ Qayta ishlatish imkonini beradi – bir necha marta hisob-kitob qilish shart emas.
-- ✅ 3️⃣ Ichki so‘rovlarga nisbatan samaraliroq – har safar takroran bajarilmaydi.
-- ✅ 4️⃣ Ko‘p bosqichli (multi-step) hisob-kitoblarni o‘sonlashtiradi.

-- 🔹 Qachon ishlatish kerak?

-- Agar murakkab GROUP BY yoki HAVING so‘rovlaringiz bo‘lsa.
-- Agar bir xil JOIN operatsiyalarini takror ishlatayotgan bo‘lsangiz.
-- Agar bir nechta subquery kodlar bilan ishlayotgan bo‘lsangiz.
-- 🚀 Real loyihalarda CTE ko‘p ishlatiladi, chunki u SQL so‘rovlarini tezroq va tushunarliroq qiladi!

