SELECT
    movie.title,
    movieexec.name
FROM
    movie,
    movieexec
WHERE
    movie.producerc = movieexec.cert
    AND movieexec.networth > ANY (
        SELECT
            movieexec.networth
        FROM
            movieexec
        WHERE
            movieexec.name = 'Merv Griffin')
