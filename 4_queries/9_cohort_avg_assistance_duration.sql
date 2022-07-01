SELECT AVG(total_duration) AS avg_total_duration
FROM (
  SELECT cohorts.name, SUM(completed_at-started_at) AS total_duration
  FROM assistance_requests
  JOIN students
  ON students.id = assistance_requests.student_id
  JOIN cohorts
  ON cohorts.id = students.cohort_id
  GROUP BY cohorts.id
  ORDER BY total_duration
) AS total;