select email as Email from(select email,count(*)cnt from Person group by email)t
where cnt>1