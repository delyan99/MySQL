SELECT e2.`department_id`, 
(
	SELECT DISTINCT e1.`salary` FROM `employees` e1
    WHERE e1.`department_id` = e2.`department_id`
    ORDER BY e1.`salary` DESC
    LIMIT 2, 1
) AS `third_highest_salary` FROM `employees` e2
GROUP BY e2.`department_id`
HAVING `third_highest_salary` IS NOT NULL
ORDER BY e2.`department_id`;