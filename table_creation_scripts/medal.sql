
CREATE TABLE cs421g19.medals
(
   medal_type VARCHAR(10) unique not null
  ,PRIMARY KEY(medal_type)       
  ,check (medal_type = 'gold' or medal_type = 'silver', or medal_type = 'bronze')
);

INSERT INTO medals VALUES('gold');
INSERT INTO medals VALUES('silver');
INSERT INTO medals VALUES('bronze');
