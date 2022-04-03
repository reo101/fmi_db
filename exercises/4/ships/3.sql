SELECT classes.country, ships.name
FROM classes
         JOIN ships ON classes.class = ships.class
WHERE ships.name NOT IN
      (select outcomes.ship from outcomes)
ORDER BY ships.name;
