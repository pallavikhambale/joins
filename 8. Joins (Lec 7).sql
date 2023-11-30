
select * from students;
select * from course;

Select * from students
inner join course
on students.C_id = course.cid;

Select Sid, Sname, Course from students inner join course on students.C_id = course.cid;

select* from authors;
select * from books;

Select * from authors
inner join books
on Authors.aid = books.authorid;

Select aid, name , title from authors
inner join books
on Authors.aid = books.authorid;

Select aid, name , title from authors
left join books
on books.authorid = Authors.aid;

Select aid, name , title from authors
right join books
on Authors.aid = books.authorid;

## IF Null clause as a part of select

Select aid, name, ifnull(title, "Unpublished") from authors
left join books
on Authors.aid = books.authorid;

Select aid, name, ifnull(title, "-") as title from authors
left join books
on Authors.aid = books.authorid;


Select aid, ifnull(name, "-"), title as title from authors
right join books
on Authors.aid = books.authorid;

select* from authors;
select * from books;

Create table meals (mealname varchar(20), rate decimal (5,2));

insert into meals values("Dosa", 70.00);
insert into meals values("Idli", 50.00);
insert into meals values("Poha", 60.00);

Create table drinks (drinkname varchar(20), rate decimal (5,2));

insert into drinks values("Tea", 20.00);
insert into drinks values("Coffee", 30.00);
insert into drinks values("Pepsi", 40.00);

select * from meals;
select * from drinks;

select mealname, rate from meals;

##  Cross Join


select * from meals cross join drinks;

select mealname, drinkname from meals cross join drinks;

select mealname, drinkname, rate from meals cross join drinks;

select  Meals.mealname, Drinks.drinkname, Meals.rate, Drinks.rate  from meals cross join drinks ;

select M.mealname, D.drinkname, M.rate, D.rate from meals as M cross join drinks as d;

select M.mealname, D.drinkname, 
M.rate+D.rate as Total_rate 
from meals as m 
cross join drinks as d;  

## Self Join

select * from office1;

select Emp_id, emp_name, reporting from office1;


select emp.emp_id, emp.emp_name, emp.Reporting, mgr.emp_name as reporting_mgr
from office1 as mgr
inner join office1 as emp
on emp.reporting = mgr.emp_id 
order by mgr.emp_id;


select * from office1;





