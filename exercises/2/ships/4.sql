SELECT DISTINCT
    o1.ship
FROM
    outcomes AS o1,
    battles AS b1,
    outcomes AS o2,
    battles AS b2
WHERE
    o1.battle = b1.name
    AND o2.battle = b2.name
    AND o1.ship = o2.ship
    AND o1.result = 'damaged'
    AND b1.date < b2.date;
