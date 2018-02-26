CREATE table if not exists cs421g19.sport
(
   sname VARCHAR(500) NOT null unique
  ,distance INTEGER
  ,PRIMARY KEY(sname)
  ,CHECK (distance = 50 or distance = 100 or distance = 200 or distance = 400 or distance = 1000 or distance = 1500)
);

INSERT INTO Sport VALUES( 'Breaststroke', 200);
INSERT INTO Sport VALUES( 'Butterfly', 100);
INSERT INTO Sport VALUES( 'Freestyle', 400);
INSERT INTO Sport VALUES( 'Sprint', 100);
INSERT INTO Sport VALUES( 'Javelin Throw', null);
