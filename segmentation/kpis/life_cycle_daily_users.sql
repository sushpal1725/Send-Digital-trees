SELECT my_date,
COUNT(DISTINCT(user_id))AS kpi
FROM(
SELECT * FROM free_tree 
UNION ALL
SELECT * FROM super_tree) as free_and_super
Group by my_date;
