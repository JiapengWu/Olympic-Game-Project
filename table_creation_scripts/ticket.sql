CREATE TABLE cs421g19.ticket
(
   tid INTEGER NOT NULL unique 
  ,match_id integer NOT NULL
  ,sid integer NOT NULL
  ,seat_number varchar(50) NOT NULL
  ,price float NOT NULL
  ,PRIMARY KEY(tid)
  ,foreign key(match_id) references match(match_id)
  ,foreign key(sid) references spectator(sid)
  ,CHECK (tid>=0 and sid>=0 and match_id>=0 and price>=0.0)
);

INSERT INTO ticket VALUES(1, 1, 1, '55f', 50.99);
INSERT INTO ticket VALUES(2, 2, 2, '244A', 249.99);
INSERT INTO ticket VALUES(3, 1, 3, '54B', 53.99);
INSERT INTO ticket VALUES(4, 2, 4, '14E', 249.99);
INSERT INTO ticket VALUES(5, 1, 5, '18B', 250.99);
INSERT INTO ticket VALUES(6, 2, 6, '44J', 129.99);
