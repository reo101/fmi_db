SELECT
    movie.title
FROM
    movie
WHERE
    movie.length > ANY (
        SELECT
            movie.length
        FROM
            movie
        WHERE
            movie.title = 'Star Wars');
