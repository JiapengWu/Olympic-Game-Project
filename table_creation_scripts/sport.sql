CREATE table cs421g19.sport
(
   sname VARCHAR(500)
  ,PRIMARY KEY(sname, distance)
  ,CHECK (distance = 100 or distance = 200 or distance = 400 or distance = 800 or distance = 1000 or distance = 1500)
);
--drop table sport cascade;

INSERT INTO Sport VALUES( 'Backstroke');
INSERT INTO Sport VALUES( 'Breaststroke');
INSERT INTO Sport VALUES( 'Butterfly');
INSERT INTO Sport VALUES( 'Freestyle');
