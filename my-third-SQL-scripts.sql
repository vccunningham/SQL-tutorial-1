select s.id as 'Student ID', concat(s.firstname, ' ', s.lastname) as 'Name',
	c.id as 'course number', concat(c.subject, ' ', c.section) as 'class',
	concat(i.firstname, ' ', i.lastname) as 'Instructor', m.Description as 'Major'
	from student s
	join studentclassrel sc
		on s.id = sc.studentid
	join class c
		on sc.classid = c.id
	join instructor i
		on i.id = c.instructorid
	join major m
		on m.id = s.majorid