CREATE TABLE if not exists cs421g19.player
(
   player_id INTEGER NOT NULL unique
  ,pname VARCHAR(50) NOT NULL
  ,gender VARCHAR(50) NOT NULL
  ,cname VARCHAR(50) NOT NULL
  ,gold_number INTEGER NOT NULL -- If no medals, then it should be 0
  ,silver_number INTEGER NOT NULL
  ,bronze_number INTEGER NOT NULL
  ,PRIMARY KEY(player_id)
  ,FOREIGN KEY(cname) REFERENCES country(cname)
  ,CHECK (player_id>=0 and gold_number>=0 and silver_number>=0 and bronze_number>=0)
);

INSERT INTO player VALUES(1, 'David Gilbert','female','Japan', 6, 6, 6);
INSERT INTO player VALUES(5, 'Paul Wu', 'male','China' , 2, 5, 6);
INSERT INTO player VALUES(3, 'Daniel Chernis', 'male','Canada' , 3, 5, 0);
INSERT INTO player VALUES(7, 'Mathieu Vachon', 'male','France' , 5, 8, 7);
INSERT INTO player VALUES(9, 'Bruce Wayne','male','USA' ,3, 2, 1);
