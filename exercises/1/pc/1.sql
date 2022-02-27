SELECT
    pc.model AS MODEL,
    pc.speed AS MHZ,
    pc.hd AS GB
FROM
    pc
WHERE
    pc.price < 1200;
