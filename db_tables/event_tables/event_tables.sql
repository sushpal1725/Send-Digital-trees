#Creating SQL table for each event category 

CREATE TABLE registrations (
day TEXT,
my_date DATE,
my_time TIME,
user_id INTEGER,
event_type TEXT,
birth_year INTEGER,
phone_type TEXT,
location TEXT,
source TEXT);
#Putting data into the registrations SQL table:

COPY registrations FROM '/home/sush/all_registrations.txt' DELIMITER ' ';

CREATE TABLE super_tree (
day TEXT,
my_date DATE,
user_id INTEGER,
event_type TEXT);
#Putting data into the super_tree SQL table:

COPY super_tree FROM '/home/sush/all_super_trees.txt' DELIMITER ' ';

CREATE TABLE free_tree (
day TEXT,
my_date DATE,
user_id INTEGER,
event_type TEXT);
#Putting data into the free_tree SQL table:

COPY free_tree FROM '/home/sush/all_free_trees.txt' DELIMITER ' ';
