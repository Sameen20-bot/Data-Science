CREATE DATABASE SQL_PRACTICE;

USE SQL_PRACTICE;

CREATE TABLE customers (
    customerNumber         INT             NOT NULL,
    customerName           VARCHAR(50)     NOT NULL,
    contactLastName        VARCHAR(50)     NOT NULL,
    contactFirstName       VARCHAR(50)     NOT NULL,
    phone                  VARCHAR(50)     NOT NULL,
    addressLine1           VARCHAR(50)     NOT NULL,
    addressLine2           VARCHAR(50)     DEFAULT NULL,
    city                   VARCHAR(50)     NOT NULL,
    state                  VARCHAR(50)     DEFAULT NULL,
    postalCode             VARCHAR(15)     DEFAULT NULL,
    country                VARCHAR(50)     NOT NULL,
    salesRepEmployeeNumber INT             DEFAULT NULL,
    creditLimit            DECIMAL(10, 2)  DEFAULT NULL,
    PRIMARY KEY (customerNumber)
);

INSERT INTO customers
    (customerNumber, customerName, contactLastName, contactFirstName, phone,
     addressLine1, addressLine2, city, state, postalCode, country,
     salesRepEmployeeNumber, creditLimit)
VALUES
(201, 'Harbour Model Supply',    'Okafor',      'Chidi',     '+44 20 7946 0318',  '14 Cable Street',          NULL,         'London',       NULL,         'E1 8JG',    'UK',        1402, 68500.00),
(202, 'Northwind Collectibles',  'Lindqvist',   'Annika',    '+46 8 545 123 45',  'Sveavagen 112',            'Floor 3',    'Stockholm',    NULL,         '113 50',    'Sweden',    1388, 91200.00),
(203, 'Dessau Die-Cast',         'Brandt',      'Markus',    '+49 341 998 2210',  'Karl-Liebknecht-Str. 48',  NULL,         'Leipzig',      NULL,         '04107',     'Germany',   1402, 45000.00),
(204, 'Pacific Scale Works',     'Nakamura',    'Hiroshi',   '+81 3 5456 7721',   '2-14-9 Ebisu',             'Suite 601',  'Tokyo',        NULL,         '150-0013',  'Japan',     1611, 128000.00),
(205, 'Cedar Lane Hobbies',      'Whitaker',    'Dana',      '(503) 555-0182',    '880 SE Hawthorne Blvd',    NULL,         'Portland',     'OR',         '97214',     'USA',       1323, 52300.00),
(206, 'Maple Ridge Miniatures',  'Tremblay',    'Luc',       '(514) 555-0144',    '4200 Rue Saint-Denis',     NULL,         'Montreal',     'QC',         'H2W 2M3',   'Canada',    1323, 37500.00),
(207, 'Bosphorus Toys Ltd.',     'Demir',       'Elif',      '+90 212 555 6690',  'Istiklal Caddesi 221',     NULL,         'Istanbul',     NULL,         '34430',     'Turkey',    1501, 0.00),
(208, 'Southern Cross Models',   'Patel',       'Riya',      '+61 2 9555 3388',   '67 Harris Street',         'Level 2',    'Sydney',       'NSW',        '2009',      'Australia', 1611, 84000.00),
(209, 'Alpine Craft Imports',    'Keller',      'Stefan',    '+41 44 555 2244',   'Bahnhofstrasse 19',        NULL,         'Zurich',       NULL,         '8001',      'Switzerland', 1388, 112500.00),
(210, 'Karachi Model Traders',   'Siddiqui',    'Bilal',     '+92 21 3455 7788',  'Plot 42, Block 6 PECHS',   NULL,         'Karachi',      'Sindh',      '75400',     'Pakistan',  1501, 29800.00),
(211, 'Rio Hobby Distributors',  'Almeida',     'Paulo',     '+55 21 3555 9100',  'Rua do Catete 311',        NULL,         'Rio de Janeiro', 'RJ',       '22220-001', 'Brazil',    1337, 64700.00),
(212, 'Thistle & Gear',          'MacLeod',     'Fiona',     '+44 131 555 7012',  '9 Grassmarket',            NULL,         'Edinburgh',    NULL,         'EH1 2HY',   'UK',        1402, 41000.00),
(213, 'Delta Scale Imports',     'Nguyen',      'Mai',       '+84 28 3555 1180',  '155 Nguyen Hue',           'Unit 12A',   'Ho Chi Minh City', NULL,     '700000',    'Vietnam',   1611, 23400.00),
(214, 'Brass & Bolt Co.',        'Fernandez',   'Carla',     '+34 91 555 4420',   'Calle de Atocha 76',       NULL,         'Madrid',       NULL,         '28012',     'Spain',     1337, 76900.00),
(215, 'Lakeside Replicas',       'Hoffman',     'Grant',     '(312) 555-0199',    '1455 N Milwaukee Ave',     NULL,         'Chicago',      'IL',         '60622',     'USA',       1323, 98000.00),
(216, 'Nordic Toy Partners',     'Sorensen',    'Mette',     '+45 33 55 11 90',   'Gothersgade 55',           NULL,         'Copenhagen',   NULL,         '1123',      'Denmark',   1388, 0.00),
(217, 'Ganges Craft House',      'Rao',         'Ananya',    '+91 22 2555 8800',  '18 Marine Lines',          '2nd Floor',  'Mumbai',       'MH',         '400020',    'India',     1501, 55600.00),
(218, 'Cape Point Models',       'Botha',       'Johan',     '+27 21 555 3030',   '44 Long Street',           NULL,         'Cape Town',    NULL,         '8001',      'South Africa', 1337, 31200.00),
(219, 'Seine Valley Miniatures', 'Mercier',     'Camille',   '+33 1 55 44 22 10', '27 Rue de Rivoli',         NULL,         'Paris',        NULL,         '75004',     'France',    1402, 103400.00),
(220, 'Red Rock Hobby Group',    'Alvarez',     'Marisol',   '(602) 555-0167',    '3301 E Camelback Rd',      'Suite 140',  'Phoenix',      'AZ',         '85018',     'USA',       1323, 47800.00),
(221, 'Baltic Model Exchange',   'Kalnins',     'Janis',     '+371 6755 1240',    'Brivibas iela 88',         NULL,         'Riga',         NULL,         'LV-1001',   'Latvia',    1388, 18900.00),
(222, 'Andes Toy Imports',       'Rojas',       'Diego',     '+56 2 2555 7744',   'Av. Providencia 1450',     NULL,         'Santiago',     NULL,         '7500000',   'Chile',     1337, 0.00),
(223, 'Emerald Isle Crafts',     'Byrne',       'Sean',      '+353 1 555 2090',   '12 Dame Street',           NULL,         'Dublin',       NULL,         'D02 HX67',  'Ireland',   1402, 59300.00),
(224, 'Gulf Coast Replicas',     'Thibodeaux',  'Marie',     '(504) 555-0121',    '720 Magazine Street',      NULL,         'New Orleans',  'LA',         '70130',     'USA',       1323, 72100.00),
(225, 'Han River Models',        'Park',        'Jisoo',     '+82 2 555 6612',    '81 Yeouidaero',            'Tower B 9F', 'Seoul',        NULL,         '07326',     'South Korea', 1611, 115000.00);

select * FROM customers;

SELECT concat(trim(contactFirstName)," ",trim(contactLastName)) FROM customers;

select substr("Hello",1,2) as substring;

select substr(trim(contactFirstName),1,2) as firstName FROM customers;

select upper(contactFirstName) as Up, lower(contactFirstName) as down from customers;

SELECT character_length((trim(contactFirstName))) FROM customers;

select mid(trim(contactFirstName),1,2) as firstName FROM customers;

select * from transaction_details;
describe transaction_details;


