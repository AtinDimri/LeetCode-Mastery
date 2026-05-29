WITH ranked_employees AS(
    SELECT e.salary AS Salary, e.name AS Employee, d.name as Department,
    DENSE_RANK() OVER(PARTITION BY d.name ORDER BY salary DESC) as rank_
    FROM Department d 
    JOIN Employee e 
    ON d.id = e.departmentId
)
Select Employee, Department, Salary
FROM ranked_employees 
WHERE rank_ < 4;