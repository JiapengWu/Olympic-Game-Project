
CREATE TABLE cs421g19.player
(
   player_id INTEGER NOT null unique
  ,pname VARCHAR(50) NOT NULL
  ,gender VARCHAR(50)
  ,gold_number INTEGER
  ,silver_number INTEGER
  ,bronze_number INTEGER
  ,PRIMARY KEY(player_id)                                                                                                                                         
);

INSERT INTO player VALUES(1, 'David Gilbert','female', 6, 6, 6);
INSERT INTO player VALUES(5, 'Paul Wu', 'male', 2, 5, 6);
INSERT INTO player VALUES(3, 'Daniel Chernis', 'male', 3, 5, 0);
INSERT INTO player VALUES(7, 'Mathieu Vachon', 'male', 5, 8, 7);
INSERT INTO player VALUES(9, 'Bruce Wayne','male', 3, 2, 1);
