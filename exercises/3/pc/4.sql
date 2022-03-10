SELECT
    products.model,
    products.price
FROM
    product,
    (
        SELECT
            laptop.model,
            laptop.price
        FROM
            laptop
        UNION
        SELECT
            pc.model,
            pc.price
        FROM
            pc
        UNION
        SELECT
            printer.model,
            printer.price
        FROM
            printer) AS products
WHERE
    product.model = products.model
    AND products.price >= ALL (
        SELECT
            pc.price AS price
        FROM
            pc
        UNION
        SELECT
            laptop.price
        FROM
            laptop
        UNION
        SELECT
            printer.price
        FROM
            printer);
