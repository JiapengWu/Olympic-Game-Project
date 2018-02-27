
CREATE TABLE cs421g19.medals
(
   medal_type VARCHAR(10) unique not null
  ,PRIMARY KEY(medal_type)                                                                                                                                         
);

INSERT INTO medals VALUES('gold');
INSERT INTO medals VALUES('silver');
INSERT INTO medals VALUES('bronze');
