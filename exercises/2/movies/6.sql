SELECT
    movie.title
FROM
    movie,
    movieexec AS me1,
    movieexec AS me2
WHERE
    movie.producerc = me1.cert
    AND me1.networth > me2.networth
    AND me2.name = 'Stephen Spielberg';
