SELECT if(`age` BETWEEN 0 AND 10, '[0-10]', if(`age` BETWEEN 11 AND 20, '[11-20]', if(`age` BETWEEN 21 AND 30, '[21-30]', if(`age` BETWEEN 31 AND 40, '[31-40]', if(`age` BETWEEN 41 AND 50, '[41-50]', if(`age` BETWEEN 51 AND 60, '[51-60]', '[61+]')))))) AS `age_group`, count(`id`) AS `wizard_count` FROM `wizzard_deposits`
GROUP BY `age_group`
ORDER BY `wizard_count`;

