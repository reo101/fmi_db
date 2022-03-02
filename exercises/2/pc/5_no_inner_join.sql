SELECT
    t.m1,
    t.m2
FROM ( SELECT DISTINCT
        p1.model AS m1,
        p2.model AS m2
    FROM
        pc AS p1,
        pc AS p2
    WHERE
        p1.ram = p2.ram
        AND p1.speed = p2.speed) AS t
WHERE
    t.m1 < t.m2;
