SELECT my_date,
       phone_type,
       source,
       COUNT(user_id) AS registered_users,
       COUNT(user_id) FILTER (WHERE user_id IN (SELECT DISTINCT (user_id) FROM free_tree)) AS free_tree_users,
       COUNT(user_id) FILTER (WHERE user_id IN (SELECT user_id FROM super_tree)) AS super_tree_user,
       COUNT(user_id) FILTER (WHERE user_id IN (SELECT user_id FROM super_tree GROUP BY user_id HAVING COUNT(*) > 1)) AS paid_user
FROM registrations
GROUP BY my_date,
         phone_type,
         source
ORDER BY my_date,
         phone_type,
         source;
