SELECT sum(wd1.`deposit_amount` - wd2.`deposit_amount`) AS `sum_difference` FROM `wizzard_deposits` wd1, `wizzard_deposits` wd2
WHERE wd2.`id` - wd1.`id` = 1;