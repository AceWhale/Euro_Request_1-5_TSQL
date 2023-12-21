-- 1
SELECT SUM(country_1_score + country_2_score) AS 'Total goals'
FROM Match;

-- 2
SELECT AVG(country_1_score + country_2_score) AS 'AVG goals'
FROM Match;

--3
--MAX
SELECT TOP 1
  m.ID AS match_id,
  m.country_1_score + m.country_2_score AS 'Max total goals',
  m1.name AS 'Country 1',
  m2.name AS 'Country 2'
FROM Match m
  INNER JOIN Country m1 ON m.id_country_1 = m1.ID
  INNER JOIN Country m2 ON m.id_country_2 = m2.ID
ORDER BY 'Max total goals' DESC;

-- MIN
SELECT TOP 1
  m.ID AS match_id,
  m.country_1_score + m.country_2_score AS 'Min total goals',
  m1.name AS 'Country 1',
  m2.name AS 'Country 2'
FROM Match m
  INNER JOIN Country m1 ON m.id_country_1 = m1.ID
  INNER JOIN Country m2 ON m.id_country_2 = m2.ID
ORDER BY 'Min total goals';


-- 4
SELECT SUM(visitors_count) AS 'Total visitors'
FROM Match;

-- 5
SELECT AVG(visitors_count) AS 'Average visitors'
FROM Match;

-- 6
SELECT TOP 10 Player.name AS 'Player name',
COUNT(gm.ID) AS 'Goals count'
FROM Player
JOIN Goal_moment gm ON Player.ID = gm.id_player
GROUP BY Player.name
ORDER BY 'Goals count' DESC;