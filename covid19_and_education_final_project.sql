--- OVERVIEW OF DATA
select * from final_project.covid19_and_education_dataset;

--- HOW MANY STUDENTS COMPLETED THE SURVEY
SELECT COUNT(ID) AS 'NO. OF STUDENTS' FROM 
final_project.covid19_and_education_dataset;
--- 1171 STUDENTS

--- WHAT WAS THE MAXIMUM AMOUNT OF TIME STUDENTS SPENT IN CLASS?
SELECT MAX(Time_spent_on_Online_Class) AS 'MAX TIME IN CLASS' FROM 
Final_project.covid19_and_education_dataset;
--- 10 hours

--- WHAT WAS THE MINIMUM AMOUNT OF TIME STUDENTS SPENT IN CLASS?
SELECT MIN(Time_spent_on_Online_Class) AS 'MIN TIME IN CLASS' FROM 
Final_project.covid19_and_education_dataset;
--- 0 hours

--- HOW MANY STUDENTS SPENT MAX OF TIME IN CLASS?
SELECT COUNT(ID) AS 'NO. OF STUDENTS' FROM 
final_project.covid19_and_education_dataset 
WHERE Time_spent_on_Online_Class = 10;
--- ONLY 4 STUDENTS SPENT 10 HOURS IN LESSONS

--- HOW MANY STUDENTS SPENT MIN OF TIME IN CLASS
SELECT COUNT(ID) AS 'NO. OF STUDENTS' FROM 
Final_project.covid19_and_education_dataset WHERE Time_spent_on_Online_Class = 0;
--- 132 STUDENTS NEVER ATTENDED LESSONS

--- EXPLORE IF STUDENTS WHO SPENT 10 HOURS IN CLASS RATED THE CLASS AS EXCELLENT
SELECT * FROM final_project.covid19_and_education_dataset WHERE 
Time_spent_on_Online_Class =10 AND Rating_of_Online_Class_experience = "Excellent";
--- NONE OF THE STUDENTS WHO SPENT MAX HOURS IN CLASS RATED IT EXCELLENT

--- HOW MANY STUDENTS RATED THE CLASSES AS POOR?
SELECT COUNT(ID) AS "RATED AS POOR" FROM final_project.covid19_and_education_dataset 
WHERE Rating_of_Online_Class_experience = "Poor" AND Time_spent_on_Online_Class <=10;
--- 30 STUDENTS RATED THE CLASS AS POOR

SELECT Time_spent_on_Online_Class, Rating_of_Online_Class_experience
FROM final_project.covid19_and_education_dataset
WHERE Rating_of_Online_Class_experience = "Very poor"
AND Time_spent_on_Online_Class BETWEEN 5 AND 10 
ORDER BY Time_spent_on_Online_Class;

SELECT COUNT(ID) AS "RATED AS VERY POOR" FROM
 final_project.covid19_and_education_dataset
 WHERE Rating_of_Online_Class_experience = "Very poor";
--- 408 rated the classes as poor

--- DID THOSE WHO CONDUCTED SELF STUDY ATTEND MORE CLASSES?
SELECT * FROM final_project.covid19_and_education_dataset
WHERE Time_spent_on_self_study BETWEEN 1 AND 5 AND Time_spent_on_online_class >=5;
SELECT COUNT(ID) AS "SELF STUDY AND CLASS ATTENDANCE" FROM 
final_project.covid19_and_education_dataset WHERE Time_spent_on_self_study BETWEEN 1 
AND 5 AND Time_spent_on_Online_Class >=5;
--- 262 STUDENTS WHO SPENT TIME ON SELF STUDY ALSO ATTENDED 5 OR MORE HOURS IN CLASS
SELECT COUNT(ID) AS "SELF STUDY AND CLASS ATTENDANCE" FROM 
final_project.covid19_and_education_dataset WHERE Time_spent_on_self_study = 0 
AND Time_spent_on_Online_Class <5;
--- 67 STUDENTS WHO SPENT 0 HOURS ON SELF STUDY ATTENDED LESS THAN 5 HOURS IN CLASS

SELECT 
CASE
WHEN Time_spent_on_fitness <= 1 THEN "NOT ACTIVE"
WHEN Time_spent_on_fitness = 2 THEN "A LITTLE ACTIVE"
WHEN Time_spent_on_fitness = 3 THEN "ACTIVE"
WHEN Time_spent_on_fitness = 4 THEN "VERY ACTIVE"
WHEN Time_spent_on_fitness = 5 THEN "VERY VERY ACTIVE"
END AS "FITNESS TRACKER"
, Time_spent_on_sleep, Number_of_meals_per_day, Change_in_your_weight
FROM final_project.covid19_and_education_dataset;

select * FROM final_project.covid19_and_education_dataset;

SELECT Stress_busters
FROM final_project.covid19_and_education_dataset
WHERE Stress_busters LIKE "%social_media%" OR 
Stress_busters LIKE "%Listening_to_music%" OR
Stress_busters LIKE "%Watching_web_series%" OR
Stress_busters LIKE "%Cooking%" OR
Stress_busters LIKE "%online_gaming%";
