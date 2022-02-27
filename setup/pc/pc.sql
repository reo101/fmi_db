CREATE TABLE laptop (
    code integer NOT NULL,
    model character varying(4) NOT NULL,
    speed numeric(4,0) NOT NULL,
    ram numeric(4,0) NOT NULL,
    hd numeric(3,0) NOT NULL,
    price double precision NOT NULL,
    screen integer NOT NULL
);

CREATE TABLE pc (
    code integer NOT NULL,
    model character varying(4) NOT NULL,
    speed numeric(4,0) NOT NULL,
    ram numeric(4,0) NOT NULL,
    hd numeric(3,0) NOT NULL,
    cd character varying(3) NOT NULL,
    price double precision NOT NULL
);

CREATE TABLE printer (
    code integer NOT NULL,
    model character varying(4) NOT NULL,
    color character(1) NOT NULL,
    type character varying(6) NOT NULL,
    price double precision NOT NULL
);

CREATE TABLE product (
    maker character(1) NOT NULL,
    model character varying(4) NOT NULL,
    type character varying(7) NOT NULL
);

INSERT INTO
    laptop (code, model, speed, ram, hd, price, screen)
VALUES
    (1, '1298', 350, 32,  4,  700,  11),
    (2, '1321', 500, 64,  8,  970,  12),
    (3, '1750', 750, 128, 12, 1200, 14),
    (4, '1298', 600, 64,  10, 1050, 15),
    (5, '1752', 750, 128, 10, 1150, 14),
    (6, '1298', 450, 64,  10, 950,  12);

INSERT INTO
    pc (code, model, speed, ram, hd, cd, price)
VALUES
    (1,  '1232', 500, 64,  5,  '12x', 600),
    (2,  '1121', 750, 128, 14, '40x', 850),
    (3,  '1233', 500, 64,  5,  '12x', 600),
    (4,  '1121', 600, 128, 14, '40x', 850),
    (5,  '1121', 600, 128, 8,  '40x', 850),
    (6,  '1233', 750, 128, 20, '50x', 950),
    (7,  '1232', 500, 32,  10, '12x', 400),
    (8,  '1232', 450, 64,  8,  '24x', 350),
    (9,  '1232', 450, 32,  10, '24x', 350),
    (10, '1260', 500, 32,  10, '12x', 350),
    (11, '1233', 900, 128, 40, '40x', 980);

INSERT INTO
    printer (code, model, color, type, price)
VALUES
    (1, '1276', 'n', 'Laser',  400),
    (2, '1433', 'y', 'Jet',    270),
    (3, '1434', 'y', 'Jet',    290),
    (4, '1401', 'n', 'Matrix', 150),
    (5, '1408', 'n', 'Matrix', 270),
    (6, '1288', 'n', 'Laser',  400);

INSERT INTO
    product (maker, model, type)
VALUES
    ('B', '1121',       'PC'),
    ('A', '1232',       'PC'),
    ('A', '1233',       'PC'),
    ('E', '1260',       'PC'),
    ('A', '1276',  'Printer'),
    ('D', '1288',  'Printer'),
    ('A', '1298',   'Laptop'),
    ('C', '1321',   'Laptop'),
    ('A', '1401',  'Printer'),
    ('A', '1408',  'Printer'),
    ('D', '1433',  'Printer'),
    ('E', '1434',  'Printer'),
    ('B', '1750',   'Laptop'),
    ('A', '1752',   'Laptop'),
    ('E', '2111',       'PC'),
    ('E', '2112',       'PC');

ALTER TABLE ONLY laptop
    ADD CONSTRAINT pk_laptop PRIMARY KEY (code);

ALTER TABLE ONLY pc
    ADD CONSTRAINT pk_pc PRIMARY KEY (code);

ALTER TABLE ONLY printer
    ADD CONSTRAINT pk_printer PRIMARY KEY (code);

ALTER TABLE ONLY product
    ADD CONSTRAINT pk_product PRIMARY KEY (model);

ALTER TABLE ONLY laptop
    ADD CONSTRAINT fk_laptop_product FOREIGN KEY (model) REFERENCES product(model);

ALTER TABLE ONLY pc
    ADD CONSTRAINT fk_pc_product FOREIGN KEY (model) REFERENCES product(model);

ALTER TABLE ONLY printer
    ADD CONSTRAINT fk_printer_product FOREIGN KEY (model) REFERENCES product(model);
