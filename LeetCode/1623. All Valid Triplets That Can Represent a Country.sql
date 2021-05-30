SELECT  a.student_name AS member_A
       ,b.student_name AS member_B
       ,c.student_name AS member_C
FROM SchoolA a
CROSS JOIN SchoolB b
CROSS JOIN SchoolC c
WHERE a.student_id not IN (b.student_id,c.student_id) 
AND b.student_id not IN (c.student_id) 
AND a.student_name not IN (b.student_name,c.student_name) 
AND b.student_name not IN (c.student_name) 