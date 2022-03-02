SELECT
    laptop.model,
    laptop.price
FROM
    laptop,
    product
WHERE
    product.model = laptop.model
    AND product.maker = 'B'
UNION
SELECT
    printer.model,
    printer.price
FROM
    printer,
    product
WHERE
    product.model = printer.model
    AND product.maker = 'B'
UNION
SELECT
    pc.model,
    pc.price
FROM
    pc,
    product
WHERE
    product.model = pc.model
    AND product.maker = 'B';
