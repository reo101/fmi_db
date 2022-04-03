SELECT outcomes.ship, battles.name, battles.date
FROM outcomes
         JOIN battles on battles.name = outcomes.battle
WHERE outcomes.result = 'sunk'
ORDER BY battles.name;