CREATE TABLE if not exists cs421g19.participate
(
  player_id INTEGER unique
  ,match_id INTEGER unique
  ,result varchar(50)
  ,ranking INTEGER
  ,medal_type VARCHAR(50)
  ,PRIMARY KEY(player_id,match_id)
  ,foreign key(player_id) REFERENCES player(player_id)
  ,foreign key(match_id) REFERENCES match(match_id)
  ,foreign key(medal_type) REFERENCES medals(medal_type)
  CHECK (ranking>=0 and player_id>=0 and match_id>=0)
);


INSERT INTO participate VALUES(1, 1, '17.03 s', 3, null);
INSERT INTO participate VALUES(1, 1, '19.03 s', 3, null;