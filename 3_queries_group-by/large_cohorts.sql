SELECT cohorts.name as cohort_name, count(*) as student_count
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohort_name
HAVING count(*) >= 18
ORDER BY student_count;

-- I'm starting to get it :D