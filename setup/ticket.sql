
CREATE TABLE cs421g19.ticket
(
   tid INTEGER NOT null unique
  ,seat_number varchar(50)
  ,price float
  ,PRIMARY KEY( tid)                                                                                                                                         
);

INSERT INTO ticket VALUES(42, '55f', 50.99);
INSERT INTO ticket VALUES(7, '244A', 249.99);
