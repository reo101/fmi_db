SELECT
    movie.title
FROM
    movie,
    movieexec
WHERE
    movie.producerc = movieexec.cert
    AND movieexec.networth > (
        SELECT
            movieexec.networth
        FROM
            movieexec
        WHERE
            movieexec.name = 'Stephen Spielberg');
