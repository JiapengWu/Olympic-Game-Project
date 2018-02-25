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
