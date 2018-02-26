
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
);

INSERT INTO ticket VALUES(42, 1, 12, '55f', 50.99);
INSERT INTO ticket VALUES(7, 2, 23, '244A', 249.99);
