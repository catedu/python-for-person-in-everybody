SELECT 
u.id AS 'user_id',
u.username AS 'DNI',
u.firstname AS 'Nombre',
u.lastname AS 'Apellidos'
FROM `mdl_user` u
JOIN `mdl_course_completions` cc ON u.id = cc.userid
WHERE cc.course = 78

SELECT c.id AS id, c.fullname, u.username, u.firstname, u.lastname, u.email
FROM `mdl_role_assignments` ra, `mdl_user` u, `mdl_course` c, `mdl_context` cxt
WHERE ra.userid = u.id
AND ra.contextid = cxt.id
AND cxt.contextlevel =50
AND cxt.instanceid = c.id
AND c.shortname ='PRAC18'
AND (roleid =5 OR roleid=3)