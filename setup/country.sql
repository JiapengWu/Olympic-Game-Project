CREATE TABLE cs421g19.country
(
  cname varchar(50) not null unique
  ,medal_number INTEGER
  ,gold_number INTEGER
  ,silver_number INTEGER
  ,bronze_number INTEGER
  ,PRIMARY KEY( cname)
);

INSERT INTO category VALUES(1,1,'11 sec', 1,'gold');
INSERT INTO category VALUES(2,2,'15 sec', 2,'silver');
INSERT INTO category VALUES(2,2,'17 sec', 3,'bronze');
