SELECT
    moviestar.name
FROM
    moviestar,
    starsin,
    movie
WHERE
    moviestar.name = starsin.starname
    AND movie.title = starsin.movietitle
    AND movie.year = 1995
    AND movie.studioname = 'MGM';
