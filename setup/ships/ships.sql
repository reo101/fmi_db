CREATE TABLE battles (
    name character varying(20) NOT NULL,
    date timestamp(3) NOT NULL
);

CREATE TABLE classes (
    class character varying(50) NOT NULL,
    type character varying(2) NOT NULL,
    country character varying(20) NOT NULL,
    numguns integer,
    bore real,
    displacement integer
);

CREATE TABLE outcomes (
    ship character varying(50) NOT NULL,
    battle character varying(20) NOT NULL,
    result character varying(10) NOT NULL
);

CREATE TABLE ships (
    name character varying(50) NOT NULL,
    class character varying(50) NOT NULL,
    launched integer
);

INSERT INTO
    battles (name, date)
VALUES
    ('Guadalcanal',    '1942-11-15 00:00:00'),
    ('North Atlantic', '1941-05-25 00:00:00'),
    ('North Cape',     '1943-12-26 00:00:00'),
    ('Surigao Strait', '1944-10-25 00:00:00');

INSERT INTO
    classes (class, type, country, numguns, bore, displacement)
VALUES
    ('Bismarck',       'bb', 'Germany',    8,  15, 42000),
    ('Iowa',           'bb', 'USA',        9,  16, 46000),
    ('Kongo',          'bc', 'Japan',      8,  14, 32000),
    ('North Carolina', 'bb', 'USA',        12, 16, 37000),
    ('Renown',         'bc', 'Gt.Britain', 6,  15, 32000),
    ('Revenge',        'bb', 'Gt.Britain', 8,  15, 29000),
    ('Tennessee',      'bb', 'USA',        12, 14, 32000),
    ('Yamato',         'bb', 'Japan',      9,  18, 65000);

INSERT INTO
    outcomes (ship, battle, result)
VALUES
    ('Bismarck',        'North Atlantic',     'sunk'),
    ('California',      'Surigao Strait',       'ok'),
    ('Duke of York',    'North Cape',           'ok'),
    ('Fuso',            'Surigao Strait',     'sunk'),
    ('Hood',            'North Atlantic',     'sunk'),
    ('King George V',   'North Atlantic',       'ok'),
    ('Kirishima',       'Guadalcanal',        'sunk'),
    ('Prince of Wales', 'North Atlantic',  'damaged'),
    ('Rodney',          'North Atlantic',       'ok'),
    ('Schamhorst',      'North Cape',         'sunk'),
    ('South Dakota',    'Guadalcanal',     'damaged'),
    ('Tennessee',       'Surigao Strait',       'ok'),
    ('Washington',      'Guadalcanal',          'ok'),
    ('West Virginia',   'Surigao Strait',       'ok'),
    ('Yamashiro',       'Surigao Strait',     'sunk'),
    ('California',      'Guadalcanal',     'damaged');

INSERT INTO
    ships (name, class, launched)
VALUES
    ('California',      'Tennessee',      1921),
    ('Haruna',          'Kongo',          1916),
    ('Hiei',            'Kongo',          1914),
    ('Iowa',            'Iowa',           1943),
    ('Kirishima',       'Kongo',          1915),
    ('Kongo',           'Kongo',          1913),
    ('Missouri',        'Iowa',           1944),
    ('Musashi',         'Yamato',         1942),
    ('New Jersey',      'Iowa',           1943),
    ('North Carolina',  'North Carolina', 1941),
    ('Ramillies',       'Revenge',        1917),
    ('Renown',          'Renown',         1916),
    ('Repulse',         'Renown',         1916),
    ('Resolution',      'Renown',         1916),
    ('Revenge',         'Revenge',        1916),
    ('Royal Oak',       'Revenge',        1916),
    ('Royal Sovereign', 'Revenge',        1916),
    ('Tennessee',       'Tennessee',      1920),
    ('Washington',      'North Carolina', 1941),
    ('Wisconsin',       'Iowa',           1944),
    ('Yamato',          'Yamato',         1941),
    ('Yamashiro',       'Yamato',         1947),
    ('South Dakota',    'North Carolina', 1941),
    ('Bismarck',        'North Carolina', 1911),
    ('Duke of York',    'Renown',         1916),
    ('Fuso',            'Iowa',           1940),
    ('Hood',            'Iowa',           1942),
    ('Rodney',          'Yamato',         1915),
    ('Yanashiro',       'Yamato',         1918),
    ('Schamhorst',      'North Carolina', 1917),
    ('Prince of Wales', 'North Carolina', 1937),
    ('King George V',   'Iowa',           1942),
    ('West Virginia',   'Iowa',           1942);

ALTER TABLE ONLY battles
    ADD CONSTRAINT pk_battles PRIMARY KEY (name);

ALTER TABLE ONLY classes
    ADD CONSTRAINT pk_classes PRIMARY KEY (class);

ALTER TABLE ONLY outcomes
    ADD CONSTRAINT pk_outcomes PRIMARY KEY (ship, battle);

ALTER TABLE ONLY ships
    ADD CONSTRAINT pk_ships PRIMARY KEY (name);

ALTER TABLE ONLY outcomes
    ADD CONSTRAINT fk_outcomes_battles FOREIGN KEY (battle) REFERENCES battles(name);

ALTER TABLE ONLY outcomes
    ADD CONSTRAINT fk_outcomes_ships FOREIGN KEY (ship) REFERENCES ships(name);

ALTER TABLE ONLY ships
    ADD CONSTRAINT fk_ships_classes FOREIGN KEY (class) REFERENCES classes(class);
