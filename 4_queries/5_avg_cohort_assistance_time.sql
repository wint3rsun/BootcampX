SELECT cohorts.name AS name, AVG(assistance_requests.completed_at-assistance_requests.started_at) AS average_assitance_time
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assitance_time;
