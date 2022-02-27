SELECT
    starsin.starname
FROM
    starsin
WHERE
    EXISTS (
        SELECT
        FROM
            movie
        WHERE
            starsin.movietitle = movie.title
            AND (movie.year = 1980
                OR movie.title LIKE '%Knight%'));
