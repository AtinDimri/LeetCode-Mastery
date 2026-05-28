# Write your MySQL query statement below
select p.firstname, p.lastname, a.city, a.state
 from Person as p left join address as a 
 on a.personId = p.personId 