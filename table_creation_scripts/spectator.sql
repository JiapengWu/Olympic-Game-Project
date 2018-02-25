
CREATE TABLE cs421g19.spectator
(
   sid INTEGER NOT null unique
   tid integer 
  ,sname varchar(50)
  ,PRIMARY KEY( sid)
  ,foreign key(tid) references ticket(tid)
);

INSERT INTO match VALUES(12, 7, 'David Gilbert');
INSERT INTO match VALUES(23, 42, 'Mathieu Vachon');
