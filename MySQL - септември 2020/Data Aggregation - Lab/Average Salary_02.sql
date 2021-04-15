SELECT `department_id`, round(avg(`salary`), 2) AS `Average Salary` FROM `employees`
GROUP BY `department_id`
ORDER BY `department_id`;
