SELECT
    ships.name,
    classes.displacement,
    classes.numguns
FROM
    ships,
    classes,
    outcomes
WHERE
    classes.class = ships.class
    AND outcomes.ship = ships.name
    AND outcomes.battle = 'Guadalcanal';
