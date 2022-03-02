SELECT
    movieexec.name
FROM
    movieexec
WHERE
    movieexec.networth > (
        SELECT
            movieexec.networth
        FROM
            movieexec
        WHERE
            movieexec.name = 'Stephen Spielberg');
