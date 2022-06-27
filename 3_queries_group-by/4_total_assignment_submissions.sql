SELECT cohorts.name as cohort, COUNT(assignment_submissions.*) as total_submissions
FROM students
JOIN cohorts
ON students.cohort_id = cohorts.id
JOIN assignment_submissions
ON assignment_submissions.student_id = students.id
GROUP BY cohort_name
ORDER BY total_submissions DESC;