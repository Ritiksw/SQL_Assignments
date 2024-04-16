SELECT EmpId,Empname,Deptid from Employe where Deptid=
(Select deptid from DEPT where Dname = 'ADMIN')
 
SELECT * FROM Employe;
Select EmpId,Empname,Job from Employe where job = 
(Select job from Employee where Empname = 'SMITH')
 
 ALTER TABLE Employee ADD COLUMN JOB VARCHAR(20);

<--employees whose salary is more than the highest salary of the emp working as Developer -->
 
Select * from Employee where Salary > 
(Select MAX(Salary) from Employe where Job='DEVELOPER')
 
Select MAX(Salary) from Employe where Job='DEVELOPER'
 
<!-- Employee whose job is same as Harry and who are earning more than Harry
 
Select * from Employe where Job = (Select Job from Employe where  Empname ='Dick') 
and Salary > (Select Salary from Employe where Empname ='Dick')
 
 
<!--Employee whose is paid the highest -->
 
Select * from Employee where Salary =
(Select MAX(salary) from Employe)
 
 
<!--Employee whose is paid the second highest -->
 
Select * from Employe where Salary = 
(Select MAX(salary) from Employe where Salary < (Select MAX(salary) from Employe ))
 
 
<!-- update employee - dick with highest salary -->
 
Update Employe set Salary = (Select MAX(salary) from Employe)  where Empid=102;
 
<!-- Delete Employee - job is same as SMITH -->
 
DELETE from Employe where Job= (Select Job from Employe where Empname='SMITH')