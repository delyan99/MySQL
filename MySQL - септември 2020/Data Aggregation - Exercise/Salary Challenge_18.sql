SELECT e.`first_name`, e.`last_name`, e.`department_id` FROM `employees` e
WHERE e.`salary` > (SELECT avg(e1.`salary`) FROM `employees` e1
GROUP BY e1.`department_id`
HAVING e1.`department_id` = e.`department_id`)
ORDER BY e.`department_id`, e.`employee_id`
LIMIT 10;