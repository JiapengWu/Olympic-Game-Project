
CREATE TABLE cs421g19.player
(
   player_id INTEGER NOT null unique
  ,pname VARCHAR(50) NOT NULL
  ,gender VARCHAR(50) not null
  ,cname varchar(50) 
  ,gold_number INTEGER
  ,silver_number INTEGER
  ,bronze_number INTEGER
  ,PRIMARY KEY(player_id)
  ,FOREIGN KEY(cname) REFERENCES country(cname)
);

INSERT INTO player VALUES(1, 'David Gilbert','female','Japan', 6, 6, 6);
INSERT INTO player VALUES(5, 'Paul Wu', 'male','China' , 2, 5, 6);
INSERT INTO player VALUES(3, 'Daniel Chernis', 'male','Canada' , 3, 5, 0);
INSERT INTO player VALUES(7, 'Mathieu Vachon', 'male','France' , 5, 8, 7);
INSERT INTO player VALUES(9, 'Bruce Wayne','male','USA' ,3, 2, 1);
