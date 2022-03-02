SELECT DISTINCT
    c1.country
FROM
    classes AS c1
    INNER JOIN classes AS c2 ON c1.type != c2.type
WHERE
    c1.country = c2.country;
