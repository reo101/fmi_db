SELECT DISTINCT
    pc1.model,
    pc2.model
FROM
    pc AS pc1
    INNER JOIN pc AS pc2 ON pc1.ram = pc2.ram
WHERE
    pc1.model < pc2.model;
