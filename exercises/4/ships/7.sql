SELECT classes.class
FROM classes
         LEFT JOIN ships on classes.class = ships.class
WHERE ships.name IS NULL;