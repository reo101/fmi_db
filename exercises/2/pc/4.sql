SELECT
    pc.hd
FROM
    pc
GROUP BY
    pc.hd
HAVING
    COUNT(pc.hd) > 1;
