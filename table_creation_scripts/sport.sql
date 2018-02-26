drop table sport;
CREATE TABLE cs421g19.sport
(
   sname VARCHAR(500) NOT null unique
  ,distance INTEGER
  ,PRIMARY KEY(sname)                                                                                                                                         
);

INSERT INTO Sport VALUES( 'Breaststroke', 200);
INSERT INTO Sport VALUES( 'Butterfly', 100);
INSERT INTO Sport VALUES( 'Freestyle', 400);
INSERT INTO Sport VALUES( 'Sprint', 100);
INSERT INTO Sport VALUES( 'Javelin Throw', null);
