# Write your MySQL query statement below
SELECT class
FROM (  SELECT class, count(student) as c
        FROM Courses
        GROUP BY class
        ORDER BY COUNT(student)
        ) as student_count
WHERE c >= 5;

