--ELizabeth PErry

-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed
--SUM(CASE WHEN Enrolment.Grade >= 40 THEN Course.Credits ELSE 0 END) AS TotalCreditsPassed
SELECT Student.StudentId, Student.FirstName, Student.LastName,SUM(Course.Credits) AS TotalCreditsPassed
FROM Student
LEFT JOIN Enrolment ON Student.StudentId = Enrolment.StudentId AND Enrolment.Grade >= 40
LEFT JOIN Course ON Enrolment.CourseId = Course.CourseId
WHERE Enrolment.Grade >=40
GROUP BY Student.StudentId, Student.FirstName, Student.LastName