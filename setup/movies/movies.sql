CREATE TABLE movie (
    title character varying(255) NOT NULL,
    year integer NOT NULL,
    length integer,
    incolor character (1),
    studioname character (50),
    producerc integer
);

CREATE TABLE movieexec (
    cert integer NOT NULL,
    name character (30),
    address character varying(255),
    networth integer
);

CREATE TABLE moviestar (
    name character (30) NOT NULL,
    address character varying(255),
    gender character (1),
    birthdate timestamp(3)
);

CREATE TABLE starsin (
    movietitle character varying(255) NOT NULL,
    movieyear integer NOT NULL,
    starname character (30) NOT NULL
);

CREATE TABLE studio (
    name character (50) NOT NULL,
    address character varying(255),
    presc integer
);

INSERT INTO
    movie (title, year, length, incolor, studioname, producerc)
VALUES
    ('Pretty Woman',             1990, 119,  'Y', 'Disney',          199),
    ('The Man Who Wasn`t There', 2001, 116,  'N', 'USA Entertainm.', 555),
    ('Logan`s run',              1976, NULL, 'Y', 'Fox',             333),
    ('Star Wars',                1977, 124,  'Y', 'Fox',             555),
    ('Empire Strikes Back',      1980, 111,  'Y', 'Fox',             555),
    ('Star Trek',                1979, 132,  'Y', 'Paramount',       222),
    ('Star Trek: Nemesis',       2002, 116,  'Y', 'Paramount',       123),
    ('Terms of Endearment',      1983, 132,  'Y', 'MGM',             123),
    ('The Usual Suspects',       1995, 106,  'Y', 'MGM',             199),
    ('Gone With the Wind',       1938, 238,  'Y', 'MGM',             123);

INSERT INTO
    movieexec (cert, name, address, networth)
VALUES
    (555, 'George Lucas',      'Oak Rd.',     200000000),
    (333, 'Ted Turner',        'Turner Av.',  125000000),
    (222, 'Stephen Spielberg', '123 ET road', 100000000),
    (199, 'Merv Griffin',      'Riot Rd.',    112000000),
    (123, 'Calvin Coolidge',   'Fast Lane',    20000000);

INSERT INTO
    moviestar (name, address, gender, birthdate)
VALUES
    ('Jane Fonda',     'Turner Av.',  'F', '1977-07-07 00:00:00'),
    ('Alec Baldwin',   'Baldwin Av.', 'M', '1977-07-06 00:00:00'),
    ('Kim Basinger',   'Baldwin Av.', 'F', '1979-07-05 00:00:00'),
    ('Harrison Ford',  'Prefect Rd.', 'M', '1955-05-05 00:00:00'),
    ('Debra Winger',   'A way',       'F', '1978-06-05 00:00:00'),
    ('Jack Nicholson', 'X path',      'M', '1949-05-05 00:00:00'),
    ('Sandra Bullock', 'X path',      'F', '1948-12-05 00:00:00');

INSERT INTO
    starsin (movietitle, movieyear, starname)
VALUES
    ('Star Wars',           1977,   'Kim Basinger'),
    ('Star Wars',           1977,   'Alec Baldwin'),
    ('Star Wars',           1977,  'Harrison Ford'),
    ('Empire Strikes Back', 1980,  'Harrison Ford'),
    ('The Usual Suspects',  1995, 'Jack Nicholson'),
    ('Terms of Endearment', 1983,     'Jane Fonda'),
    ('Terms of Endearment', 1983, 'Jack Nicholson');

INSERT INTO
    studio (name, address, presc)
VALUES
    ('Disney',          '500 S. Buena Vista Street', 1),
    ('USA Entertainm.', '',                          2),
    ('Fox',             '10201 Pico Boulevard',      3),
    ('Paramount',       '5555 Melrose Ave',          4),
    ('MGM',             'MGM Boulevard',             5);

ALTER TABLE ONLY movie
    ADD CONSTRAINT pk_movie PRIMARY KEY (title, year);

ALTER TABLE ONLY movieexec
    ADD CONSTRAINT pk_movieexec PRIMARY KEY (cert);

ALTER TABLE ONLY moviestar
    ADD CONSTRAINT pk_moviestar PRIMARY KEY (name);

ALTER TABLE ONLY starsin
    ADD CONSTRAINT pk_starsin PRIMARY KEY (movietitle, movieyear, starname);

ALTER TABLE ONLY studio
    ADD CONSTRAINT pk_studio PRIMARY KEY (name);

ALTER TABLE ONLY movie
    ADD CONSTRAINT fk_movie_movieexec FOREIGN KEY (producerc) REFERENCES movieexec (cert);

ALTER TABLE ONLY movie
    ADD CONSTRAINT fk_movie_studio FOREIGN KEY (studioname) REFERENCES studio (name);

ALTER TABLE ONLY starsin
    ADD CONSTRAINT fk_starsin_movie FOREIGN KEY (movietitle, movieyear) REFERENCES movie (title, year);

ALTER TABLE ONLY starsin
    ADD CONSTRAINT fk_starsin_moviestar FOREIGN KEY (starname) REFERENCES moviestar (name);
