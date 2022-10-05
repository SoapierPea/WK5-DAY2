DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    age INTEGER
);
INSERT INTO customer(
    first_name,
    last_name,
    email,
    age

)
 VALUES(
    'Hughe',
    'Jaenus',
    'Bigguy@email.com',
    39

 );
 INSERT INTO customer(
    first_name,
    last_name,
    email,
    age

)
 VALUES(
    'Ivana',
    'Tinkle',
    'coldwoman@hotmail.com',
    62

 );

 INSERT INTO customer(
    first_name,
    last_name,
    email,
    age

)
 VALUES(
    'Anita',
    'Schmidt',
    'takingaschmidt@toilet.com',
    19

 );
SELECT *
FROM customer;

DROP TABLE IF EXISTS purchase CASCADE;
CREATE TABLE purchase(
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    total_price NUMERIC ,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
 INSERT INTO purchase(
    customer_id,
    total_price
)
 VALUES(
    1,
    29.99

);
 INSERT INTO purchase(
    customer_id,
    total_price
)
 VALUES(
    2,
    85.50

);
 INSERT INTO purchase(
    customer_id,
    total_price
)
 VALUES(
    3,
    13.99

);
SELECT *
FROM purchase;



DROP TABLE IF EXISTS entity CASCADE;
CREATE TABLE entity(
    order_entity_id SERIAL PRIMARY KEY,
    order_id INTEGER,
    con_id INTEGER,
    ticket_id INTEGER,
    FOREIGN KEY(con_id) REFERENCES concession(con_id),
    FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id),
    FOREIGN KEY(order_id) REFERENCES purchase(order_id)

);

INSERT INTO entity(
    order_id,
    con_id,
    ticket_id
)

VALUES(
    1,
    1,
    1
);
INSERT INTO entity(
    order_id,
    con_id,
    ticket_id
)

VALUES(
    2,
    2,
    2
);
INSERT INTO entity(
    order_id,
    con_id,
    ticket_id
)

VALUES(
    3,
    3,
    3
);
SELECT * 
FROM entity


DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    product_description VARCHAR(200),
    product_price NUMERIC(5,2),
    movie_id INTEGER 
);
INSERT INTO ticket(
    product_name,
    product_description,
    product_price,
    movie_id


)
VALUES (
    'Ticket',
    'Movie ticket',
    10.99,
    3

);
INSERT INTO ticket(
    product_name,
    product_description,
    product_price,
    movie_id


)
VALUES (
    'Ticket',
    'Movie ticket',
    10.99,
    1



);

INSERT INTO ticket(
    product_name,
    product_description,
    product_price,
    movie_id


)
VALUES (
    'Ticket',
    'Movie ticket',
    10.99,
    3



);
SELECT *
FROM ticket

DROP TABLE IF EXISTS concession CASCADE;
CREATE TABLE concession(
    con_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    product_description VARCHAR(200),
    product_price NUMERIC (8,2)
);
INSERT INTO concession(
    product_name,
    product_description,
    product_price

)
VALUES(
    'SICK-NASTY MT DEW BAJA BLASTER',
    'DISGUSTING DRINK',
    5.99

);

INSERT INTO concession(
    product_name,
    product_description,
    product_price

)
VALUES(
    'Burger 12-pack Meal',
    'Comes with single, slightly moldy, big fry',
    85.50

);

INSERT INTO concession(
    product_name,
    product_description,
    product_price

)
VALUES(
    'small popcorn',
    'single-serve popcorn',
    85.50

);
SELECT *
FROM concession

DROP TABLE IF EXISTS movie CASCADE;
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    titles VARCHAR(50),
    runtime INTEGER,
    rating VARCHAR
);
INSERT INTO movie (
    titles, 
    runtime,
    rating
)
VALUES (
    'Look at this Dude: The Movie ',
    120,
    'PG-13'


);
INSERT INTO movie (
    titles, 
    runtime,
    rating
)
VALUES (
    'Look at this Babe: The Movie ',
    120,
    'PG-13'


);
INSERT INTO movie (
    titles, 
    runtime,
    rating
)
VALUES (
    'Look at this Photograph: The Movie ',
    120,
    'PG-13'


);
SELECT * 
FROM movie