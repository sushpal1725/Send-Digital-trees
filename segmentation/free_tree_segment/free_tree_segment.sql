#Number of free_tree sends by sources
#Free tree sends by source

SELECT source, COUNT(*)
FROM free_tree
JOIN registrations
ON free_tree.user_id = registrations.user_id
GROUP BY source;
---------------------------------------------------------------------

#Number of free_tree sends by location
#Free tree sends by location

SELECT location, COUNT(*)
FROM free_tree
JOIN registrations
ON free_tree.user_id = registrations.user_id
GROUP BY location;
---------------------------------------------------------------------

#Number of free_tree sends by phone_type
#Free tree sends by phone_type

SELECT phone_type, COUNT(*)
FROM free_tree
JOIN registrations
ON free_tree.user_id = registrations.user_id
GROUP BY phone_type;
---------------------------------------------------------------------

#Number of free_tree sends by birth_year
#Free tree sends by birth_year

SELECT birth_year, COUNT(*)
FROM free_tree
JOIN registrations
ON free_tree.user_id = registrations.user_id
GROUP BY birth_year
ORDER BY birth_year DESC;
---------------------------------------------------------------------

#MICRO-SEGMENTATION QUERIES:
#Micro-segmentation free_trees
SELECT source, phone_type, location, birth_year, COUNT(*)
FROM free_tree
Join registrations
on free_tree.user_id= registrations.user_id
GROUP BY source, phone_type, location, birth_year
ORDER BY count, birth_year DESC;
