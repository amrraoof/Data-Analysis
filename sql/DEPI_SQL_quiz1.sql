
/* 1. Students
o StudentID (Primary Key, Integer)
o FirstName (Varchar, 50)
o LastName (Varchar, 50)
o DateOfBirth (Date)
o EnrollmentDate (Date)
o Email (Varchar, 100)
o Age (Integer)*/


create table Students (
StudentID int primary key,
FirstName varchar(50),
LastName varchar(50),
DateOfBirth Date,
EnrollmentDate Date,
Email varchar(100),
Age int);


/* 
. Courses
o CourseID (Primary Key, Integer)
o CourseName (Varchar, 100)
o Credits (Integer)
o Department (Varchar, 50)*/
CREATE TABLE Courses (
CourseID INT PRIMARY KEY,
CourseName VARCHAR(100),
Credits INT ,
Department VARCHAR(50)
);
/*
Enrollments
o EnrollmentID (Primary Key, Integer)
o StudentID (Foreign Key, Integer, references Students table)
o CourseID (Foreign Key, Integer, references Courses table)
o Grade (Char, 2)
o Semester (Varchar, 10)*/



CREATE TABLE Enrollments (
EnrollmentID INT PRIMARY KEY,
StudentID INT,
CourseID INT,
Grade CHAR(2),
Semster VARCHAR(10)
);

/*
Professors
o ProfessorID (Primary Key, Integer)
o FirstName (Varchar, 50)
o LastName (Varchar, 50)
o Department (Varchar, 50)
o Email (Varchar, 100)*/
create table Professors (
ProfessorID INT PRIMARY KEY,
FirstName varchar(50),
LastName varchar(50),
Department varchar(50),
Email varchar(100))

/* CourseAssignments
o AssignmentID (Primary Key, Integer)
o ProfessorID (Foreign Key, Integer, references Professors table)
o CourseID (Foreign Key, Integer, references Courses table)
o Semester (Varchar, 10*/

create table CourseAssignments (
AssignmentID int primary key,
ProfessorID int ,
CourseID int,
semester varchar(10)
);


/* 1. Insert data into the Students table:*/

insert into students(StudentID , FirstName , LastName , DateOfBirth , EnrollmentDate , Email) values
(1, 'John', 'Doe', '2000-01-01', '2018-09-01', 'john.doe@example.com');

insert into students values
(2, 'Jane', 'Smith', '1999-05-15', '2017-09-01','jane.smith@example.com',21),
(3, 'Robert', 'Brown', '2001-11-21', '2019-09-01','robert.brown@example.com',25),
(4, 'Emily', 'Jones', '2002-03-03', '2020-09-01','emily.jones@example.com',22),
(5, 'Michael', 'Davis', '1998-07-22', '2016-09-01','michael.davis@example.com',23),
(6, 'Linda', 'Wilson', '2000-12-12', '2018-09-01','linda.wilson@example.com',21),
(7, 'James', 'Taylor', '2001-03-14', '2019-09-01','james.taylor@example.com',22),
(8, 'Sarah', 'Lee', '2002-07-07', '2020-09-01','sarah.lee@example.com',23),
(9, 'David', 'Martin', '1999-11-11', '2017-09-01','david.martin@example.com',24),
(10, 'Susan', 'Clark', '2001-05-05', '2019-09-01','susan.clark@example.com',22);

select * from students
/* insert into courses*/
insert into courses values
(1, 'Introduction to SQL', 3, 'Computer Science'),
(2, 'Data Structures', 4, 'Computer Science'),
(3, 'Database Management Systems', 3, 'Information Technology'),
(4, 'Algorithms', 4, 'Computer Science'),
(5, 'Operating Systems', 3, 'Information Technology'),
(6, 'Web Development', 3, 'Computer Science'),
(7, 'Computer Networks', 3, 'Information Technology');

select * from Courses


/* insert into enrollments*/
insert into enrollments values
(1, 1, 2, 'A', 'Fall2020'),
(2, 2, 3, 'B+', 'Spring2021'),
(3, 3, 2, 'A-', 'Fall2021'),
(4, 4, 3, 'B', 'Spring2022'),
(5, 2, 2, 'A', 'Fall2020'),
(6, 5, 1, 'B+', 'Fall2020'),
(7, 6, 4, 'A', 'Spring2021'),
(8, 7, 5, 'B', 'Fall2021'),
(9, 8, 6, 'A-', 'Spring2022'),
(10, 9, 7, 'B+', 'Fall2020'),
(11, 10, 1, 'A', 'Spring2021'),
(12, 1, 3, 'B', 'Spring2021'),
(13, 2, 4, 'A-', 'Fall2021'),
(14, 3, 5, 'B+', 'Spring2022'),
(15, 4, 6, 'A', 'Fall2020');

/* inesrt into proffersors*/
insert into Professors values
(1, 'Dr. Alice', 'Johnson', 'Computer Science','alice.johnson@example.com'),
(2, 'Dr. Bob', 'Miller', 'Information Technology','bob.miller@example.com'),
(3, 'Dr. Carol', 'Williams', 'Computer Science','carol.williams@example.com'),
(4, 'Dr. David', 'Jones', 'Information Technology','david.jones@example.com'),
(5, 'Dr. Emma', 'Brown', 'Computer Science', 'emma.brown@example.com');

/*insert int courseassignment*/
insert into CourseAssignments values
(1, 1, 1, 'Fall2020'),
(2, 1, 2, 'Spring2021'),
(3, 2, 3, 'Fall2020'),
(4, 3, 2, 'Spring2022'),
(5, 4, 4, 'Fall2021'),
(6, 5, 5, 'Spring2022'),
(7, 1, 6, 'Fall2020'),
(8, 2, 7, 'Spring2021');

select * from Students
select * from Courses
select * from Enrollments
select * from Professors
select * from CourseAssignments



-- 3. Update the email of the student with StudentID 1 to 'john.doe@newmail.com'.
update  students
set Email = 'john.doe@newmail.com'
where studentID = 1

-- 4. Delete the record of the student with StudentID 5 from the Students table.
delete from STUDENTS
where StudentID = 5;

-- 5. Select all records from the Students table.
select * from students


-- 6. Select the FirstName and LastName of all students who enrolled after '2018-01-01'.
SELECT FirstName , LastName 
FROM STUDENTS
where EnrollmentDate > '2018-01-01';

-- 7. Count the number of students in the Students table.
select count(FirstName) as count from STUDENTS;
--or
select count(*) as count from STUDENTS;

-- 8. Select all records from the Courses table.
select * from Courses

-- 9. Select the CourseName and Credits for courses in the 'Computer Science' department.


select CourseName, Credits
from Courses
where Department = 'Computer Science';

-- 10. Find the total number of credits offered by the 'Information Technology' department.

select sum(Credits) as 'total credits'
from Courses
where Department = 'Information Technology';

-- 11. List each student’s FirstName, LastName, and the names of the courses they are enrolled in.

select s.FirstName, s.LastName , c.CourseName
from STUDENTS s
left join Enrollments e 
on s.StudentID = e.StudentID
left join Courses c 
on c.CourseID = e.CourseID

-- 12. Find the names of courses that have more than one student enrolled. List the CourseName and the number of students.

select c.CourseName,
count(e.StudentID) as 'total students enrolled'
from courses c
left join Enrollments e
on c.CourseID = e.CourseID
group by c.CourseName
having count(e.StudentID) > 1;

-- 13. Select all students and order them by their EnrollmentDate in descending order.

select * from STUDENTS
order by EnrollmentDate DESC;

-- 14. List the FirstName and LastName of students who are not enrolled in any courses.

--subquery
select FirstName , LastName
from Students
where StudentID not in (select StudentID from enrollments)

SELECT s.FirstName , s.LastName
FROM STUDENTS s
LEFT JOIN Enrollments e
on s.StudentID = e.StudentID
group by s.FirstName , s.LastName
having COUNT(e.courseID) = 0;

-- 15. Find the average number of credits for each department. List the Department and the average credits.



select c.Department ,
AVG(c.credits) as 'Average credits'
from Courses c
left join Enrollments e
on c.CourseID = e.CourseID
where e.EnrollmentID is not null  -- to make sure to eliminate courses with no enrollments
group by c.Department;

-- 16. List the FirstName, LastName, CourseName, and Grade of students enrolled in courses for the 'Fall2020' semester.

select s.FirstName , s.LastName , c.CourseName , e.Grade
from STUDENTS s
left join Enrollments e
on s.StudentID = e.StudentID
left join Courses c
on c.CourseID = e.CourseID
where e.Semster = 'Fall2020';

-- 17. List the CourseName and the number of students enrolled in each course.

select c.CourseName,
count(e.studentID) as 'number of students'
from Courses c
left join Enrollments e
on c.CourseID = e.CourseID
group by c.CourseName;

-- 18. Find the FirstName, LastName, CourseName, and Grade of students who received a grade lower than 'B'.

-- solution 1
select FirstName , LastName
from Students
where StudentID  in (
select distinct studentid from enrollments e
where 
	case 
		when e.grade like 'A%' then 4
		when e.grade like 'B%' then 3
		when e.grade like 'C%' then 2
		when e.grade like 'D%' then 1
		else 0
	end < 3
)

-- solution 2
select s.FirstName , s.LastName , c.CourseName , e.grade
from students s
left join enrollments e
on s.StudentID = e.studentid
left join Courses c
on c.CourseID = e.courseid
where 
	case
		when e.grade like 'A%' then 4
		when e.grade like 'B%' then 3
		when e.grade like 'C%' then 2
		when e.grade like 'D%' then 1
		else 0
	end < 3 


-- solution 3
select s.FirstName , s.LastName , c.CourseName , e.Grade
from STUDENTS s
left join Enrollments e
on s.StudentID = e.StudentID
left join Courses c
on c.CourseID = e.CourseID
WHERE
	case
		WHEN e.Grade = 'A+' THEN 10
		when e.Grade = 'A' THEN 9
		WHEN e.Grade = 'A-' THEN 8
		WHEN e.Grade = 'B+' THEN 7
        WHEN E.Grade = 'B' THEN 6
		WHEN E.Grade = 'B-' THEN 5
		WHEN E.Grade = 'C+' THEN 4
        WHEN E.Grade = 'C' THEN 3
		WHEN E.Grade = 'C-' THEN 2
        WHEN E.grade = 'D' THEN 1
	else 0
	end <6;

 
-- 19. List each StudentID, FirstName, LastName, and the total number of enrollments.

SELECT s.StudentID , s.FirstName , s.LastName , 
count(e.courseID) as 'Total enrollments'
FROM STUDENTS s
LEFT JOIN Enrollments e
on s.StudentID = e.StudentID
group by s.StudentID , s.FirstName , s.LastName;

-- 20. List the CourseName of courses that have no enrollments.

-- solution 1
select CourseName
from courses 
where CourseID in (
select CourseID from enrollments 
group by CourseID
having count(enrollmentid) is null
)

-- solution 2
select c.CourseName
from Courses c
left join Enrollments e
on c.CourseID = e.CourseID
group by c.CourseName
having count(e.CourseID) =  0;


-- 21. List the top 3 students with the highest number of course enrollments. Include
-- StudentID, FirstName, LastName, and TotalEnrollments.
select
StudentID , FirstName , LastName
from Student
where StudentID in (
select top 3 StudentID from enrollments 
group by StudentID
order by count(enrollmentid) desc
) 


select top 3
s.StudentID , s.FirstName , s.LastName , 
count(e.courseID) as 'TotalEnrollments'
from STUDENTS s
left join Enrollments e
on s.StudentID = e.StudentID
group by s.StudentID , s.FirstName , s.LastName
order by count(e.courseID) desc;


-- 22. List each professor’s FirstName, LastName, and the names of the courses they are
--assigned to teach.

-- solution 1
select p.FirstName , p.LastName , c.CourseName
from Professors p
join CourseAssignments ca
on p.ProfessorID = ca.ProfessorID
join Courses c
on c.CourseID = ca.CourseID
order by FirstName , LastName





-- solution 2


select p.FirstName , p.LastName ,c.CourseName
from Professors p
left join CourseAssignments ca
on p.ProfessorID = ca.ProfessorID
left join Courses c
on c.CourseID = ca.CourseID

-- 24. Select all courses and order them by Credits in ascending order

select * from Courses
order by credits 




select * from Courses
order by Credits asc

-- 25. List the FirstName and LastName of professors who are teaching more than one course.

-- solution 1
select FirstName , LastName
from Professors 
where ProfessorID in (
select ProfessorID from CourseAssignments
group by ProfessorID
having count(CourseID) > 1
);

-- solution 2
select p.FirstName , p.LastName,
count(ca.CourseID) as 'Total Courses'
from Professors p
left join CourseAssignments ca
on p.ProfessorID = ca.ProfessorID
group by p.FirstName , p.LastName
having count(ca.CourseID)>1;

-- 26. List the FirstName, LastName, and CourseName of students who are enrolled in courses
-- taught by 'Dr. Alice Johnson'.

-- solution 1
select s.FirstName , s.LastName , c.CourseName
from Students s
join enrollments e
on s.StudentID = e.studentid
join Courses c
on c.CourseID = e.courseid
where c.CourseID in (
select CourseID from CourseAssignments
where Professorid in
(
select distinct ProfessorID from Professors
where FirstName + ' ' + LastName = 'Dr. Alice Johnson'
))
order by c.CourseName;

-- solution 2
select s.firstname , s.lastname , c.CourseName
from students s
left join enrollments e
on s.studentID = e.studentID
left join Courses c
on c.CourseID = e.courseID
left join CourseAssignments ca
on c.CourseID = ca.CourseID
left join Professors p
on ca.ProfessorID = p.ProfessorID
where p.FirstName = 'Dr. Alice' and p.LastName = 'Johnson'
order by c.coursename;

-- 27. Find the total number of credits each student is enrolled in. List the StudentID
-- FirstName, LastName, and TotalCredits.
-- solution1
select s.StudentID , s.FirstName , s.LastName,
sum(c.credits) as 'Total credits'
from Students s
join enrollments e
on s.StudentID = e.studentid
join Courses c
on c.CourseID = e.courseid
group by s.StudentID , s.FirstName , s.LastName




-- solution 2

select s.studentID , s.firstname , s.lastname , 
sum(c.Credits) as 'Total credits'
from students s
left join  enrollments e
on s.studentID = e.studentID
left join Courses c
on c.CourseID = e.courseid
group by s.studentID , s.firstname , s.lastname


-- 28. Find the number of students enrolled in each course for the 'Spring2021' semester. List
-- the CourseID, CourseName, and StudentCount.
-- solution 1

select c.CourseID , c.CourseName , 
count(e.studentid) as 'StudentCount'
from Courses c
join enrollments e
on c.CourseID = e.courseid
where e.semster = 'Spring2021'
group by c.CourseID , c.CourseName




-- solution 2


select c.CourseID , c.CourseName,
COUNT(e.studentid) as 'StudentCount'
from Courses c 
left join enrollments e
on c.CourseID = e.CourseID
group by c.CourseID , c.CourseName

-- 29. List the CourseName and Department of courses that had enrollments in 'Spring2021'.
select c.CourseName , c.Department
from Courses c
left join Enrollments e
on c.CourseID = e.CourseID
where e.Semster = 'Spring2021';

-- 30. For each student, list their StudentID, FirstName, LastName, and the date of their last enrollment
select StudentID , FirstName , LastName , EnrollmentDate
from STUDENTS; 
-- 31. Find the names of students who have enrolled in 'Data Structures' (CourseID 2).
select s.FirstName , s.LastName, c.CourseName
from STUDENTS s
left join Enrollments e
on s.StudentID = e.StudentID
left join Courses c
on c.CourseID = e.CourseID
where c.CourseName = 'Data Structures';

-- 32 32. List all students along with the total number of courses they are enrolled in.
select s.FirstName , s.LastName, 
count(e.CourseID) as 'number of courses'
from STUDENTS s
left join Enrollments e
on s.StudentID = e.StudentID
group by s.FirstName , s.LastName;

-- 33. List all students with their enrolled courses and grades. Include StudentID, FirstName, LastName, CourseName, and Grade.
select  s.StudentID , s.FirstName , s.LastName , c.CourseName , e.Grade
from STUDENTS s
left join Enrollments e
on s.StudentID = e.StudentID
left join Courses c 
on c.CourseID = e.CourseID

-- 34. Find the total number of enrollments for each student. List the StudentID, FirstName,
-- LastName, and TotalEnrollments.
select s.StudentID , s.FirstName , s.LastName,
count(e.EnrollmentID) as 'TotalEnrollments'
from STUDENTS s
left join Enrollments e
on s.StudentID = e.StudentID
group by s.StudentID , s.FirstName , s.LastName

-- 35. Create a view named EnrollmentSummary that displays StudentID, FirstName,
-- LastName, CourseID, CourseName, and Grade from the Enrollments table.
create view EnrollmentSummary as
select s.studentid , s.firstname , s.lastname , c.CourseID , c.CourseName , e.grade
from students s
left join enrollments e
on s.studentid = e.studentid 
left join Courses c
on c.CourseID = e.courseid

-- 36. Find the average age of students enrolled in each course. List the CourseID, CourseName, and AverageAge.
select c.CourseID , c.CourseName,
avg(year(getdate()) - year(s.dateofbirth) ) as 'AverageAge'
from Courses c
left join Enrollments e
on c.CourseID = e.CourseID
left join STUDENTS s
on e.StudentID = s.StudentID
group by c.CourseID , c.CourseName;

-- 37 Find the highest and lowest grade received by students in each course. List the CourseID,
-- CourseName, HighestGrade, and LowestGrade.
select c.CourseID , c.CourseName , 
	max(CASE
			WHEN e.Grade = 'A+' THEN 10
			WHEN e.Grade = 'A' THEN 9
			WHEN e.Grade = 'A-' THEN 8
			WHEN e.Grade = 'B+' THEN 7
			WHEN e.Grade = 'B' THEN 6
			WHEN e.Grade = 'B-' THEN 5
			WHEN e.Grade = 'C+' THEN 4
			WHEN e.Grade = 'C' THEN 3
			WHEN e.Grade = 'C-' THEN 2
			WHEN e.Grade = 'D' THEN 1
			WHEN e.Grade = 'F' THEN 0
		END) AS 'HighestGrades',

	min(CASE
			WHEN e.Grade = 'A+' THEN 10
			WHEN e.Grade = 'A' THEN 9
			WHEN e.Grade = 'A-' THEN 8
			WHEN e.Grade = 'B+' THEN 7
			WHEN e.Grade = 'B' THEN 6
			WHEN e.Grade = 'B-' THEN 5
			WHEN e.Grade = 'C+' THEN 4
			WHEN e.Grade = 'C' THEN 3
			WHEN e.Grade = 'C-' THEN 2
			WHEN e.Grade = 'D' THEN 1
			WHEN e.Grade = 'F' THEN 0
		END) AS 'lowestGrades'
from Courses c
left join Enrollments e
on c.CourseID = e.CourseID
group by c.CourseID , c.CourseName;

--38 Calculate the average grade of students enrolled in each course. List the CourseID,
--CourseName, and AvgGrade.
select c.CourseID, c.CourseName,
	avg(CASE
			WHEN e.Grade = 'A+' THEN 10
			WHEN e.Grade = 'A' THEN 9
			WHEN e.Grade = 'A-' THEN 8
			WHEN e.Grade = 'B+' THEN 7
			WHEN e.Grade = 'B' THEN 6
			WHEN e.Grade = 'B-' THEN 5
			WHEN e.Grade = 'C+' THEN 4
			WHEN e.Grade = 'C' THEN 3
			WHEN e.Grade = 'C-' THEN 2
			WHEN e.Grade = 'D' THEN 1
			WHEN e.Grade = 'F' THEN 0
		END) AS 'AverageGrades'

from Courses c
left join Enrollments e
on c.CourseID = e.CourseID
group by c.CourseID, c.CourseName;

-- 39. Find the total grades for students in each department. List the Department and TotalGrades.
select c.Department,
	sum(CASE
			WHEN e.Grade = 'A+' THEN 10
			WHEN e.Grade = 'A' THEN 9
			WHEN e.Grade = 'A-' THEN 8
			WHEN e.Grade = 'B+' THEN 7
			WHEN e.Grade = 'B' THEN 6
			WHEN e.Grade = 'B-' THEN 5
			WHEN e.Grade = 'C+' THEN 4
			WHEN e.Grade = 'C' THEN 3
			WHEN e.Grade = 'C-' THEN 2
			WHEN e.Grade = 'D' THEN 1
			WHEN e.Grade = 'F' THEN 0
		END) AS 'TotalGrades'

from Courses c
left join Enrollments e
on c.CourseID = e.CourseID
group by c.Department;
-- 40. List the FirstName, LastName, CourseName, and ProfessorName for each enrollment.
select s.firstname , s.lastname , c.CourseName , p.FirstName + ' ' +p.LastName as 'ProfessorName'
from students s
left join enrollments e
on s.studentid = e.studentid
left join Courses c
on c.CourseID = e.courseid
left join CourseAssignments ca
on ca.CourseID = c.CourseID
left join Professors p
on p.ProfessorID = ca.ProfessorID


