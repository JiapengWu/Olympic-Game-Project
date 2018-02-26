
CREATE TABLE if not exists cs421g19.spectator
(
   sid INTEGER NOT null unique
  ,sname varchar(50)
  ,PRIMARY KEY( sid)
  ,foreign key(tid) references ticket(tid)
  CHECK (sid>=0 and tid>=0)
);

INSERT INTO match VALUES(12, 'David Gilbert');
INSERT INTO match VALUES(23, 'Mathieu Vachon');
