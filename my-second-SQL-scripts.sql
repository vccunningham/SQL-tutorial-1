select concat(firstname, ' ', lastname) as 'Instructor', YearsExperience, C.Id as 'Course Code',
	concat(subject, ' ', section) as 'Class', i.IsTenured

from Instructor i
join Class c
	on i.id = C.instructorID
	where i.IsTenured = 1
	order by i.Lastname