--Part 1
SHOW COLUMNS
FROM jobs;

--Part 2
SELECT Name
FROM employers;

--Part 3
SELECT DISTINCT skills.Name, skills.Description 
FROM skills
JOIN jobskills on jobskills.SkillId = skills.Id
JOIN jobs on jobskills.JobId = jobs.Id
ORDER BY skills.name;

--Part 3 alternate
SELECT skills.Name, skills.Description
FROM skills
WHERE Id IN (SELECT SkillId FROM jobskills)
ORDER BY skills.Name;

