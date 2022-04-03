-- 8. Изведете името, водоизместимостта и броя оръдия на корабите,
-- участвали в битката ‘North Atlantic’, а също и резултата от битката.

SELECT ships.name, classes.displacement, classes.numguns, outcomes.result
FROM ships
         JOIN classes on ships.class = classes.class
         JOIN outcomes on ships.name = outcomes.ship
WHERE outcomes.battle = 'North Atlantic';