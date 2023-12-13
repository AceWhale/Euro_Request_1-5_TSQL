-- 1
SELECT SUM(country_1_score + country_2_score) AS 'Total goals'
FROM Match;

-- 2
SELECT MAX(country_1_score + country_2_score) AS 'Max goals',
       MIN(country_1_score + country_2_score) AS 'Min goals'
FROM Match;

-- 3
SELECT SUM(capacity) AS 'Total visitors'
FROM Stadium;

--4
SELECT AVG(capacity) AS 'Average visitors per match'
FROM Stadium;

-- 5
SELECT TOP 10 p.name AS 'Player',
              COUNT(gm.ID) AS 'Goals count'
FROM Player p
JOIN Goal_moment gm ON p.ID = gm.id_player
GROUP BY p.name
ORDER BY 'Goals count' DESC;