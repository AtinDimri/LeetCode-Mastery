WITH ConsecutiveNums1 as(
    SELECT num, LEAD(num, 1) OVER(ORDER BY id) as leadnum,
    LAG(num, 1) OVER( ORDER BY id) as lagnum
    FROM Logs
)
SELECT DISTINCT num as ConsecutiveNums
FROM ConsecutiveNums1
WHERE num = leadnum 
AND num = lagnum;