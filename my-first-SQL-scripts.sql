

select *from student;
select *from major;

select student.id, concat(firstname, ' ', lastname) as 'Name', SAT, GPA,
		isnull (Description, 'Undecided') as 'Major', 
		isnull (MinSAT, '') as 'Min SAT Required'
	from Student
	left join Major
		on major.id = student.MajorId;