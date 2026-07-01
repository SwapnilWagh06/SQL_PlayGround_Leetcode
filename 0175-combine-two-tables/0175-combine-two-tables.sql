# Write your MySQL query statement below
select firstname,lastname,city,state from(
select personid ,lastname,firstname from  person)A
LEFT JOIN(
    SELECT personid,CITY,STATE FROM ADDRESS)B ON A.personid=B.personid