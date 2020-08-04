INSERT INTO daily_revenue_kpi
SELECT (SELECT current date-1 as yesterday) AS my_date,
(SELECT COUNT(*) -COUNT(DISTINCT(user_id))
FROM super_tree
WHERE my_date < (SELECT current_date as today ))
-
(SELECT COUNT(*)-COUNT(DISTINCT(user_id))
FROM super_tree
WHERE my_date < (SELECT current_date-1 as yesterday))AS kpi;