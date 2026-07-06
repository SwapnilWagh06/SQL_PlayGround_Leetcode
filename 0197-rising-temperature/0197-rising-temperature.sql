select id from(
select *,lag(temperature,1) over(order by recordDate)lead1,
lag(recordDate,1) over(order by recordDate)lead2 from Weather)t
where (temperature-lead1 )>0 and DATEDIFF(recordDate , lead2) = 1 
