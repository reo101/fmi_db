SELECT DISTINCT
    movieexec.name
FROM
    movieexec,
    movie
WHERE
    movie.producerc = movieexec.cert
    AND movie.studioname = 'MGM';
