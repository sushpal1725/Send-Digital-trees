#Number of super_tree sends by sources
#Super tree sends by source

SELECT source, COUNT(*)
FROM super_tree
JOIN registrations
ON super_tree.user_id = registrations.user_id
GROUP BY source;
-----------------------------------------------------------------
#Number of super_tree sends by location
#Super tree sends by location

SELECT location, COUNT(*)
FROM super_tree
JOIN registrations
ON super_tree.user_id = registrations.user_id
GROUP BY location;
-----------------------------------------------------------------
#Number of super_tree sends by phone_type
#Super tree sends by phone_type

SELECT phone_type, COUNT(*)
FROM super_tree
JOIN registrations
ON super_tree.user_id = registrations.user_id
GROUP BY phone_type;
-----------------------------------------------------------------
#Number of super_tree sends by birth_year
#Super tree sends by birth_year

SELECT birth_year, COUNT(*)
FROM super_tree
JOIN registrations
ON super_tree.user_id = registrations.user_id
GROUP BY birth_year
ORDER BY birth_year DESC;
---------------------------------------------------------------------

#MICRO-SEGMENTATION QUERIES:
#Micr-segmentation super_trees
SELECT source, phone_type, location, birth_year, COUNT(*)
FROM super_tree
Join registrations
on super_tree.user_id= registrations.user_id
GROUP BY source, phone_type, location, birth_year
ORDER BY count, birth_year DESC;
---------------------------------------------------------------------
