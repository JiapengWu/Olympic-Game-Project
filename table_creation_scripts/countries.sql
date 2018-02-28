CREATE TABLE cs421g19.country
(
  cname varchar(50) not null unique
  ,total_medal_number INTEGER
  ,gold_number INTEGER 
  ,silver_number INTEGER
  ,bronze_number INTEGER
  ,PRIMARY KEY(cname)
  ,CHECK (gold_number>=0 and silver_number>=0 
  	and bronze_number>=0 and total_medal_number>=0)
);

INSERT INTO country VALUES('Canada',0, 0, 0, 0);
INSERT INTO country VALUES('Russia',0, 0, 0, 0);
INSERT INTO country VALUES('China',0, 0, 0, 0);
INSERT INTO country VALUES('USA',0, 0, 0, 0);
INSERT INTO country VALUES('Japan',0, 0, 0, 0);
INSERT INTO country VALUES('France',0, 0, 0, 0);