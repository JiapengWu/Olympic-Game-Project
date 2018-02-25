
CREATE TABLE cs421g19.medals
(
   medal_type VARCHAR(10) unique
  ,PRIMARY KEY(medal_type)                                                                                                                                         
);

INSERT INTO medal VALUES('Gold');
INSERT INTO medal VALUES('Silver');
INSERT INTO medal VALUES('Bronze');
