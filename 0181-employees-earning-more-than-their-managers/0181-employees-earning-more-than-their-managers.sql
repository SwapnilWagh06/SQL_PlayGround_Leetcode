# Write your MySQL query statement below

select name Employee from(select id,name,managerId,salary from employee)A
LEFT JOIN(select id,salary from employee)B ON A.managerId=B.ID
where b.id is not null and A.salary>=B.SALARY