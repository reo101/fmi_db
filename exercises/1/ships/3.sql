SELECT
    outcomes.ship,
    outcomes.battle
FROM
    outcomes
WHERE
    outcomes.result = 'sunk';
