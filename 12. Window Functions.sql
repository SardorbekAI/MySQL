-- Window Functions

SELECT gender, AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON sal.employee_id = dem.employee_id
GROUP BY gender;

#=============================================

#bu har bir gender guruhidagi o‘rtacha salaryni hisoblaydi va shu guruhga tegishli barcha xodimlar uchun bir xil qiymatni qaytaradi.
#Xodimlarni jins (gender) bo‘yicha guruhlaydi va har bir jinsga tegishli barcha xodimlarning o‘rtacha maoshini hisoblab har bir satrga yozadi.
SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON sal.employee_id = dem.employee_id;

#=============================================

#jinslar bo'yicha umumiy oylik maosh
SELECT dem.first_name, dem.last_name, gender, salary, 
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
	ON sal.employee_id = dem.employee_id;
    

#=============================================

#yangi tartiib raqam berish
#gender bo'ycha va oylik maoshi bo'yicha tarib raqami berish
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary, 
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num, #qatorga tartib raqam berish, gender bo'yicha oylikga qarab
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num, #gender va maoshga qarab ranklash. 4, 5, 5, 7
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num #gender va maoshga qarab ranklash. 4, 5, 5, 6
FROM employee_demographics dem
JOIN employee_salary sal
	ON sal.employee_id = dem.employee_id;