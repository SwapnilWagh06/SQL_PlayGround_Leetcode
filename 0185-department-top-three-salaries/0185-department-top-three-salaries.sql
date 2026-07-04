# Write your MySQL query statement below
select Department,Employee,Salary from(
select *,dense_rank() over(partition by B.Department order by salary desc)rank1 from(SELECT name Employee,salary,departmentid FROM Employee)A
LEFT JOIN(SELECT id,name Department FROM Department)B ON A.departmentId =B.ID )t where rank1<=3