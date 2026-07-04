SELECT DISTINCT name AS Customers  FROM (
select DISTINCT id,name from Customers)A LEFT JOIN(
SELECT DISTINCT Customerid from Orders)B ON A.id=B.Customerid
WHERE B.Customerid IS NULL 