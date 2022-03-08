SELECT
    movieexec.name
FROM
    movieexec
WHERE
    movieexec.name IN (
        SELECT
            moviestar.name
        FROM
            moviestar
        WHERE
            moviestar.gender = 'F')
    AND movieexec.networth > 10000000
