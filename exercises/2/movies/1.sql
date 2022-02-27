SELECT
    moviestar.name
FROM
    moviestar,
    starsin
WHERE
    moviestar.name = starsin.starname
    AND moviestar.gender = 'M'
    AND starsin.movietitle = 'The Usual Suspects';
