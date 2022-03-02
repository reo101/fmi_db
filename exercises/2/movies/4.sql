SELECT
    movie.title
FROM
    movie
WHERE
    movie.length > (
        SELECT
            movie.length
        FROM
            movie
        WHERE
            movie.title = 'Star Wars');
