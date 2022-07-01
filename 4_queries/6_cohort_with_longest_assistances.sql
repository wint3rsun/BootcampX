SELECT MAX(average_assitance_time)
FROM (
  SELECT cohorts.name AS name, AVG(assistance_requests.completed_at-assistance_requests.started_at) AS average_assitance_time
  FROM students
  JOIN cohorts ON cohorts.id = students.cohort_id
  JOIN assistance_requests ON assistance_requests.student_id = students.id
  GROUP BY cohorts.name
) AS avg_totals_table;

-- Compass Solution
-- SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
-- FROM assistance_requests 
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time DESC
-- LIMIT 1;