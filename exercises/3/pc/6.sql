SELECT DISTINCT
    product.maker
FROM
    product
WHERE
    product.type = 'pc'
    AND product.model IN (
        SELECT
            pc.model
        FROM
            PC
        WHERE
            pc.speed = (
                SELECT
                    MAX(pc.speed)
                FROM
                    pc
                WHERE
                    pc.model IN (
                        SELECT
                            pc.model
                        FROM
                            pc
                        WHERE
                            pc.ram = (
                                SELECT
                                    MIN(pc.ram)
                                FROM
                                    pc))))
