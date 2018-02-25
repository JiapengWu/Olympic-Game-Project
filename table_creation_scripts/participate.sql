CREATE TABLE cs421g19.participate
(
  player_id INTEGER unique
  ,match_id INTEGER unique
  ,result varchar(50) 
  ,ranking INTEGER
  ,medal_type VARCHAR(50)
  ,PRIMARY KEY( sname,team_type,gender)
  ,foreign key(player_id) REFERENCES player(player_id)
  ,foreign key(match_id) REFERENCES match(match_id)
  ,foreign key(medal_type) REFERENCES medals(medal_type)
);

INSERT INTO category VALUES(1,1,'11sec', 1,'Gold');
INSERT INTO category VALUES(7,2,'15sec', 2,'Silver');
INSERT INTO category VALUES(9,3,'17sec', 3,'Bronze');
