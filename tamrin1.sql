use danaDB

select first_name+ ' '+last_name as name,age , city,entry from student

select * from student
order BY age desc


select first_name+ ' '+last_name as name,age , city,entry from student
		where city='tehran'

select first_name+ ' '+last_name as name,age , city,entry from student
where city='karaj' or city='tehran'

select first_name+ ' '+last_name as name,age , city,entry from student
where city='tehran' and age='20'

select * from student
where city <> 'tehran'

Select * From student
where not major ='2'

Select * From student
where age between 20 and 23
order by age asc

Select * From student
where age IN (18,26,20)



Select * From student
where  city IN ('mashhad','tehran','karaj')

Select * From student
where first_name Like 'ali'


Select * From student
where first_name Like 'm%'

Select * From student
where city Like '%k%'

select city from student


Select Distinct city From student
order by City


select top 2 city from student

select count(*) first_name from student


Select Sum(age)as sumAge From student
Select min(age) From student
Select max(age) From student
Select AVG(age) From student
Select SUM(age)/Count(*) From student


Select Count(city) From student
Where city = 'tehran'

Select first_name,Count(age) as CountCountry 
From student
group by first_name




Select first_name,
       Count(country) as CountCountry 
From student
where Country IN ('Germany','Brazil','iran') 
Group By Country
Having Count(Country) <10
Order By 2 desc


insert into student(id,first_name,last_name,student_id,age,major,entry,city)
			values(7,'dana','fatahi',5698,20,1,951,'tehran')


insert into student(id,first_name,last_name,student_id,age,major,entry,city)
			values(8,'dana','fatahi',5698,20,1,951,'tehran'),
			(9,'mamad','alizadeh',6544,22,3,961,'mashhad'),
			(10,'amir','ahmadi',6544,19,2,962,'esfahan')


update student set first_name = 'hamid'
where first_name='amir' and student_id=6544


select * into student_backup from student

delete from student
where first_name='ali'

drop table [student_backup]

