SELECT s.name,
       s.class,
       s.launched,
       c.class,
       c.type,
       c.country,
       c.numguns,
       c.bore,
       c.displacement
FROM classes AS c
         LEFT JOIN ships AS s on c.class = s.class
WHERE C.CLASS IN (SELECT NAME FROM SHIPS)
   OR C.CLASS IN (SELECT CLASS FROM SHIPS);