SELECT
    ships.name
FROM
    ships,
    classes
WHERE
    ships.class = classes.class
    AND classes.displacement > 50000;
