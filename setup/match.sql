CREATE TABLE cs421g19.match
(
   match_id INTEGER NOT NULL
  ,match_type VARCHAR(50)
  ,location VARCHAR(50)
  ,date varchar(50)
  ,sports_name varchar(50)
  ,gender varchar(50)
  ,team_type varchar(50)
  ,PRIMARY KEY(match_id)
  ,FOREIGN key(sports_name) REFERENCES sport(sname)
  
  ,CONSTRAINT fk_gender
  	FOREIGN key(gender) REFERENCES category(gender)
  	ON DELETE cascade
  	
  ,CONSTRAINT fk_team_type
  	FOREIGN key(team_type) REFERENCES category(team_type)
  	ON DELETE CASCADE
);

ALTER TABLE category
ADD CONSTRAINT fk_match_id
  	FOREIGN KEY(match_id) REFERENCES match(match_id)
  	ON DELETE CASCADE

INSERT INTO match VALUES(1, 'Final',null, '3/05/18', 'Breaststroke');
INSERT INTO match VALUES(2, 'Semi-final', null, '3/04/18', 'Javelin Throw');
INSERT INTO match VALUES(3, 'Preliminary', 'here', '3/01/18', 'Freestyle');
INSERT INTO match VALUES(4, 'Preliminary', 'there', '3/02/18', 'Sprint');
INSERT INTO match VALUES(5, 'Preliminary','everywhere', '3/03/18', 'Butterfly');