# Send-Digital-trees
It is a hypothetical startup, where a user registers, sends free digital trees to people in their contacts and also paid supertrees,$1 each(the first supertree is free). A user can come to know the app and register for Send A Tree through these sources: google, invite_a_friend, paid promo, and article. A daily log file is created for each day (filename: day_xx), containing event_type: registration, free_tree_send or super_tree_send, date, location, phone_type, birth_year, and source.  
  
In this project: 

I have set up Jupyter Notebook, PgAdmin, and Python3 on remote LINUX server, using DigitalOcean. 

I have set up automation for data load, automated categorization based on event type and storing daily logs in respective folders, through CRONTAB Created SQL tables, for the categorized daily logs for REGISTRATIONS, FREE TREE SEND, and SUPER TREE SEND and automated SQL load.

Performed broad market segmentation tasks through SQL and Python. Segments: Registrations, Free Trees, Super Trees 

Performed micro-market segmentation tasks: Segments through SQL and Python: Location, phone type, Source, Birth Year
Questions Answered: 
a. Which is the most important source of registrations? Are there any changes in the trends? 
b.Which Phone_type based segment has more/least registrants, the free tree sends, supertree sends? Who is more active? 
c.Which Location-based segment has more/least registrants, the free tree sends, supertree sends? Who is more active? 
d.Which Source-based segment has more/least registrants, the free tree sends, supertree sends? Who is more active? 
e.Which Birth Year-based segment has more/least registrants, the free tree sends, supertree sends? Who is more active? 

Calculate daily Active users on the app in total and through segmentation perspective. Automated the daily active users' calculations.

Performed revenue calculation task in SQL and Python: Calculating the total revenue and also revenue through each segment possible and Automated the daily revenue calculation. 

Performed Funnel Analysis and Cohort Analysis( first and last 30 days) in SQL and Python. Performed Prediction Analysis to predict, Send-a-Tree possibly reaching the 25,000 free-tree sends per day, 10,000 super tree sends per day, 35,000 registrants per day.

Feature engineered with available data and ordinal encoding the feauture data and then performed various classification algorithms for classifying the error phone type records into iOS or Android-based on free_tree_sends, super_tree_sends, location and sources as features. 
