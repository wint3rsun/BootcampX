SELECT id, name, email, cohort_id
FROM students
Where github IS NULL
ORDER BY cohort_id;
