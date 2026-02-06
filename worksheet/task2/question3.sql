--ELizabeth Perry

-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

SELECT Department.DepartmentName, COUNT(Enrolment.EnrolmentID) AS TotalEnrolments
FROM Department 
JOIN Course ON Department.DepartmentID = Course.DepartmentID
JOIN Enrolment ON Course.CourseID = Enrolment.CourseID
GROUP BY Department.DepartmentName