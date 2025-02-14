
--1
SELECT 
    CASE 
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END AS TriangleType
FROM TRIANGLES;
 
-- 2
SELECT
    CASE
     WHEN OCCUPATION = 'Doctor' THEN name + '(D)'
     WHEN OCCUPATION = 'Actor' THEN name + '(A)'
     WHEN OCCUPATION = 'Singer' THEN name + '(S)'
     WHEN OCCUPATION = 'Professor' THEN name + '(P)'
    END
FROM OCCUPATIONS
order by NAME

SELECT 'There are a total of ' + CAST(COUNT(OCCUPATION) AS VARCHAR) + ' ' + lower(OCCUPATION) + 's.'
FROM OCCUPATIONS
GROUP BY OCCUPATION
order by COUNT(OCCUPATION)

-- 3
SELECT 
    c.company_code,
    c.founder,
    COUNT(DISTINCT lm.lead_manager_code) AS total_lead_managers,
    COUNT(DISTINCT sm.senior_manager_code) AS total_senior_managers,
    COUNT(DISTINCT m.manager_code) AS total_managers,
    COUNT(DISTINCT e.employee_code) AS total_employees
FROM Company c
LEFT JOIN Lead_Manager lm ON c.company_code = lm.company_code
LEFT JOIN Senior_Manager sm ON c.company_code = sm.company_code
LEFT JOIN Manager m ON c.company_code = m.company_code
LEFT JOIN Employee e ON c.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;

or 

SELECT 
    c.company_code,
    c.founder,
    (SELECT COUNT(DISTINCT lm.lead_manager_code) FROM Lead_Manager lm WHERE lm.company_code = c.company_code) AS total_lead_managers,
    (SELECT COUNT(DISTINCT sm.senior_manager_code) FROM Senior_Manager sm WHERE sm.company_code = c.company_code) AS total_senior_managers,
    (SELECT COUNT(DISTINCT m.manager_code) FROM Manager m WHERE m.company_code = c.company_code) AS total_managers,
    (SELECT COUNT(DISTINCT e.employee_code) FROM Employee e WHERE e.company_code = c.company_code) AS total_employees
FROM Company c
ORDER BY c.company_code;


-- 4


