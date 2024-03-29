SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';


SELECT students.name as student,
 count(assignment_submissions.*) as total_submissions
 FROM assignment_submissions
 JOIN students ON students.id = student_id
 WHERE students.end_date IS NULL AND count(assignment_submissions.*) < 100
 GROUP BY students.name;