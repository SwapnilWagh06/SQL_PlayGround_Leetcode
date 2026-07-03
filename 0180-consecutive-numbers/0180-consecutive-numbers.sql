SELECT distinct num as ConsecutiveNums FROM(
select id,num,  LAG(Num) OVER(ORDER BY Id) AS prev_num,
           LEAD(Num) OVER(ORDER BY Id) AS next_num from logs order by id)t
           where Num=prev_num and num =next_num