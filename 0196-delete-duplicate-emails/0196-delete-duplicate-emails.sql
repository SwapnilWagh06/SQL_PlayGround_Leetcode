DELETE FROM Person
where id in (
select id from( select id ,email ,row_number() over(partition by email order by 
id)ran1 from Person)t where ran1 not in (1))