SELECT DISTINCT LEFT(`first_name`, 1) AS `first_letter` FROM `wizzard_deposits`
WHERE `deposit_group` = 'Troll Chest'
GROUP BY  `first_name`
ORDER BY `first_name`;

