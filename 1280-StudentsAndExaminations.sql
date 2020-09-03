/* Write your T-SQL query statement below */
SELECT
    t2.*,
    COALESCE(t1.attended_exams, 0) AS attended_exams
FROM (
    SELECT DISTINCT
        students.student_id,
        student_name,
        subject_name,
        COUNT(*) OVER (PARTITION BY students.student_id, subject_name) AS attended_exams
    FROM students
    LEFT JOIN examinations
        ON students.student_id = examinations.student_id
) AS t1
RIGHT JOIN (
    SELECT
        students.student_id,
        students.student_name,
        subjects.subject_name
    FROM students, subjects
) AS t2
    ON t1.student_id = t2.student_id and t1.subject_name = t2.subject_name
ORDER BY student_id, subject_name
