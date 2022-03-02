SELECT
    classes.country
FROM
    classes
WHERE
    classes.type = 'bb'
INTERSECT
SELECT
    classes.country
FROM
    classes
WHERE
    classes.type = 'bc';
