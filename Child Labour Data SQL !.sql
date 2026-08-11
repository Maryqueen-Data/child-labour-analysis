SELECT * 
FROM "ChildLabourData";


-- 1. What is the average child labour percentage worldwide? --

SELECT ROUND(AVG(child_labour_percentage), 2) AS average_child_labour
FROM "ChildLabourData";



-- 2. Which regions have the highest child labour?--

SELECT geographic_area,
  ROUND(AVG(child_labour_percentage), 2) AS average_child_labour
  FROM "ChildLabourData"
   GROUP BY geographic_area
    ORDER BY average_child_labour DESC;

-- 3. Which regions have the lowest Child labour?

SELECT geographic_area,
  ROUND(AVG(child_labour_percentage), 2) AS average_child_labour
  FROM "ChildLabourData"
   GROUP BY geographic_area
    ORDER BY average_child_labour ASC;

--Has child labour improved over time?


SELECT
    year,
    ROUND(AVG(child_labour_percentage),2) AS average_percentage
FROM "ChildLabourData"
GROUP BY year
ORDER BY year;

  
-- 5. Male vs Female

SELECT
    sex,
    ROUND(AVG(child_labour_percentage),2) AS average_percentage
FROM "ChildLabourData"
WHERE sex <> 'Total'
GROUP BY sex;


-- 6. Which age group is most affected?

SELECT
    age_group,
    ROUND(AVG(child_labour_percentage),2) AS average_percentage
FROM "ChildLabourData"
GROUP BY age_group
ORDER BY average_percentage DESC;


-- 7. Top 10 countries/regions highest child labour--

SELECT 
    geographic_area,
	child_labour_percentage
FROM "ChildLabourData"
WHERE sex = 'Total'
ORDER BY child_labour_percentage DESC
LIMIT 10;

--8. What is the Trend by gender --

SELECT
 sex, 
 year,
ROUND(AVG(child_labour_percentage),2) AS average_percentage
 FROM
  "ChildLabourData"
WHERE sex <> 'Total'
 GROUP BY year, sex
 ORDER BY  year;

 --9. What is the Trend by region--

 SELECT
    year,
    geographic_area,
    ROUND(AVG(child_labour_percentage),2) AS average_percentage
FROM "ChildLabourData"
GROUP BY year, geographic_area
ORDER BY average_percentage DESC;




