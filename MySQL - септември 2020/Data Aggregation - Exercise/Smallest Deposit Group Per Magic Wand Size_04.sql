SELECT `deposit_group` FROM `wizzard_deposits`
GROUP BY `deposit_group`
HAVING avg(`magic_wand_size`)
LIMIT 1;
