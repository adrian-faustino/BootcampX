-- Students in Cohort
SELECT id, name
FROM students
WHERE cohort_id = 1
ORDER BY name;

-- Total Students in Cohort
SELECT COUNT(id)
FROM students
WHERE cohort_id IN (1,2,3);

-- Contact Details
SELECT name, id, cohort_id
FROM students
WHERE email IS NULL or phone IS NULL;

-- Non Gmail Students
SELECT name, email, id, cohort_id
FROM students
WHERE email NOT LIKE '%gmail%' AND phone IS NULL;

-- Currently Enrolled Students
SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

-- Github Activity
SELECT name, email, phone
FROM students
WHERE github IS NULL and end_date IS NOT NULL;