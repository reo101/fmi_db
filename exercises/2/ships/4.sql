SELECT DISTINCT
    t1.ship
FROM (
    SELECT
        t.m2,
        out1.ship,
        out1.result
    FROM (
        SELECT
            battles.name AS m1,
            battles.date AS m2
        FROM
            battles
        ORDER BY
            date offset 0 ROWS) AS t
        INNER JOIN outcomes out1 ON out1.battle = t.m1) AS t1
    INNER JOIN (
        SELECT
            t.m2,
            out1.ship,
            out1.result
        FROM (
            SELECT
                battles.name AS m1,
                battles.date AS m2
            FROM
                battles
            ORDER BY
                date offset 0 ROWS) AS t
            INNER JOIN outcomes out1 ON out1.battle = t.m1) AS t2 ON t1.result != t2.result
WHERE
    t1.ship = t2.ship
    AND t1.m2 < t2.m2;
