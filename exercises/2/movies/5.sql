SELECT
    me1.name
FROM
    movieexec AS me1,
    movieexec AS me2
WHERE
    me1.networth > me2.networth
    AND me2.name = 'Stephen Spielberg';
