SELECT `peak_name`, `river_name`, lower(concat(substring(`peak_name`, 1, length(`peak_name`) - 1), `river_name`)) AS `mix` FROM `peaks`, `rivers`
WHERE substring(`river_name`, 1, 1) = substring(`peak_name`, length(`peak_name`), 1)
ORDER BY `mix`;