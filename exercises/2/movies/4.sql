SELECT
    m1.title
FROM
    movie AS m1,
    movie AS m2
WHERE
    m1.length > m2.length
    AND m2.title = 'Star Wars';
