-- First
SELECT *
FROM CITY
where POPULATION > 100000 and COUNTRYCODE = 'USA'

-- Second
SELECT NAME 
from CITy 
where POPULATION > 120000 and COUNTRYCODE = 'USA'

-- Third
select * from city
where countrycode = 'JPN'

-- 4
select name from Employee
order by name

-- 5
select name from Employee
where salary > 2000 and months < 10
order by  employee_id asc

-- 6
select name
from STUDENTS
where marks > 75
order by right(name,3),id asc
 
-- 7 and the last one

SELECT part, assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;
