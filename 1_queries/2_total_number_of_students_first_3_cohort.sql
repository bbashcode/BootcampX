SELECT count(id) as total_student_count
FROM students
WHERE cohort_id >= 1 AND cohort_id <= 3;