#Total users who sent free trees
SELECT *
FROM free_tree
JOIN registrations
ON free_tree.user_id = registrations.user_id;
---------------------------------------------------------------------
#Total users who sent super trees
SELECT *
FROM super_tree
JOIN registrations
ON super_tree.user_id = registrations.user_id;
---------------------------------------------------------------------
#SEGMENTATION QUERIES:
#Registrations by sources:

SELECT source, COUNT(*)
FROM registrations
GROUP BY source;
---------------------------------------------------------------------
#Registrations by location:

SELECT location, COUNT(*)
FROM registrations
GROUP BY location;
---------------------------------------------------------------------
#Registrations by phone_type:

SELECT phone_type, COUNT(*)
FROM registrations
GROUP BY phone_type;
---------------------------------------------------------------------
#Registrations by birth_year:

SELECT birth_year, COUNT(*)
FROM registrations
GROUP BY birth_year
ORDER BY birth_year DESC;
---------------------------------------------------------------------
#Micro-segmentation on registrations trends

SELECT source, location, phone_type, birth_year, COUNT(*)
FROM registrations
GROUP BY source, location, phone_type, birth_year
ORDER BY count,birth_year DESC;
---------------------------------------------------------------------
