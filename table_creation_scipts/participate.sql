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
);

INSERT INTO participate VALUES(1,1,'11sec', 1,'gold');
INSERT INTO participate VALUES(2,2,'15sec', 2,'silver');
INSERT INTO participate VALUES(2,2,'17sec', 3,'bronze');
