SELECT ships.name AS "Ship Name"
FROM ships
         JOIN classes ON ships.class = classes.class
WHERE classes.numguns >= 7
  AND ships.launched = 1916;