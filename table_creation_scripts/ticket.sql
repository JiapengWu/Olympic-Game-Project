
CREATE TABLE cs421g19.ticket
(
   tid INTEGER NOT null unique
  ,match_id integer
  ,sid integer 
  ,seat_number varchar(50) not null
  ,price float not null
  ,PRIMARY KEY(tid)
  ,foreign key(match_id) references match(match_id)
  ,foreign key(sid) references spectator(sid)
);

INSERT INTO ticket VALUES(42, 1, 12, '55f', 50.99);
INSERT INTO ticket VALUES(7, 2, 23, '244A', 249.99);
