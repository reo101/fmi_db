SELECT
    pc.model,
    pc.speed,
    pc.hd
FROM
    pc
WHERE
    pc.price < 2000
    AND (pc.cd = '12x'
        OR pc.cd = '16x');
