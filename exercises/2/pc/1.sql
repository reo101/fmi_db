SELECT
    product.maker,
    laptop.speed
FROM
    laptop,
    product
WHERE
    product.type = 'Laptop'
    AND product.model = laptop.model
    AND laptop.hd >= 9;
