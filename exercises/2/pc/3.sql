SELECT DISTINCT
    product.maker
FROM
    product
WHERE
    product.type = 'Laptop'
EXCEPT
SELECT DISTINCT
    product.maker
FROM
    product
WHERE
    product.type = 'PC';
