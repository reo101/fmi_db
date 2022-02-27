SELECT
    starname
FROM
    starsin
WHERE
    starsin.movieyear = 1980
    OR starsin.movietitle LIKE '%Knight%'
