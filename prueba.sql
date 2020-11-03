SELECT
u.username AS 'User',
c.shortname AS 'Course',
m.name AS Activitytype, 
CASE 
    WHEN cm.module = 16 THEN (SELECT a16.name FROM `mdl_quiz`  a16               WHERE a16.id = cm.instance)
    WHEN cm.module = 7 THEN (SELECT a7.name FROM `mdl_feedback` a7        WHERE a7.id = cm.instance)
END AS Actvityname,
# cm.section AS Coursesection,
CASE
    WHEN cm.completion = 0 THEN '0 None'
    WHEN cm.completion = 1 THEN '1 Self'
    WHEN cm.completion = 2 THEN '2 Auto'
END AS Activtycompletiontype, 
CASE
   WHEN cmc.completionstate = 0 THEN 'In Progress'
   WHEN cmc.completionstate = 1 THEN 'Completed'
   WHEN cmc.completionstate = 2 THEN 'Completed with Pass'
   WHEN cmc.completionstate = 3 THEN 'Completed with Fail'
   ELSE 'Unknown'
END AS 'Progress', 
DATE_FORMAT(FROM_UNIXTIME(cmc.timemodified), '%Y-%m-%d %H:%i') AS 'When'
FROM `mdl_course_modules_completion` cmc 
JOIN `mdl_user` u ON cmc.userid = u.id
JOIN `mdl_course_modules` cm ON cmc.coursemoduleid = cm.id
JOIN `mdl_course` c ON cm.course = c.id
JOIN `mdl_modules` m ON cm.module = m.id
# skip the predefined admin AND guest USER
WHERE u.id > 2
# config reports filters
#%%FILTER_USERS:u.username%%
#%%FILTER_SEARCHTEXT:m.name:~%%
AND cmc.timemodified>1509628786
AND cmc.timemodified<1515707403
AND c.id = 261
 
ORDER BY u.username