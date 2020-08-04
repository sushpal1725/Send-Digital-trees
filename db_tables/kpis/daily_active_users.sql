INSERT INTO daily_active_users_kpi
SELECT (SELECT current_date-1 as yesterday) AS my_date,
COUNT(DISTINCT(user_id))AS kpi
FROM(
SELECT * FROM free_tree 
UNION ALL
SELECT * FROM super_tree) as free_and_super
WHERE my_date=(SELECT current_date-1 as yesterday);
