SELECT
    product.maker
FROM
    product
WHERE
    product.model = (
        SELECT
            printer.model
        FROM
            printer
        WHERE
            printer.color = 'y'
            AND printer.price = (
                SELECT
                    MIN(printer.price)
                FROM
                    printer
                WHERE
                    printer.color = 'y'));
