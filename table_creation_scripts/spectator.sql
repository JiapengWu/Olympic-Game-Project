CREATE TABLE cs421g19.spectator
(
   sid INTEGER NOT NULL unique
  ,sname varchar(50)
  ,PRIMARY KEY(sid)
);

INSERT INTO spectator VALUES(12,  'David Gilbert');
INSERT INTO spectator VALUES(23,  'Mathieu Vachon');