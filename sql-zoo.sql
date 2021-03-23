-- select basics
SELECT population FROM world
  WHERE name = 'Germany'

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

-- select from world
SELECT name, continent, population FROM world

SELECT name
  FROM world
 WHERE population >= 200000000

SELECT name, gdp/population
FROM world
WHERE population >= 200000000

SELECT name, population/1000000
FROM world
WHERE continent='South America'

SELECT name, population
FROM world
WHERE name in ('France', 'Germany', 'Italy')

SELECT name
FROM world
WHERE name LIKE '%united%'

SELECT name, population, area
FROM world
WHERE (area > 3000000 OR population > 250000000)

SELECT name, population, area
FROM world
WHERE (area > 3000000 AND population < 250000000)
  OR (area < 3000000 AND population > 250000000)

SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000, 2)
FROM world
WHERE continent='South America'

