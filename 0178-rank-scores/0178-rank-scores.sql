SELECT score, ranking AS 'rank'
FROM (
    SELECT score,
           DENSE_RANK() OVER (ORDER BY score DESC) AS ranking
    FROM Scores
) t
ORDER BY score DESC;