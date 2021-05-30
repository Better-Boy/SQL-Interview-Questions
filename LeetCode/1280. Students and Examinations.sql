 with all_students_and_subjects AS (
SELECT  student_id
       ,student_name
       ,subject_name
FROM subjects
CROSS JOIN students )
SELECT  s.student_id
       ,s.student_name
       ,s.subject_name
       ,coalesce(attended_exams,0) AS attended_exams
FROM all_students_and_subjects s
LEFT JOIN 
(
	SELECT  student_id
	       ,subject_name
	       ,COUNT(1) AS attended_exams
	FROM examinations e
	GROUP BY  1
	         ,2 
) e
ON e.student_id = s.student_id AND e.subject_name = s.subject_name
ORDER BY 1,3