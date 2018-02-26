CREATE TABLE if not exists cs421g19.participate
(
  player_id INTEGER not null
  ,match_id INTEGER not null
  ,result varchar(50) not null
  ,ranking INTEGER not null
  ,medal_type VARCHAR(50)
  ,PRIMARY KEY(player_id, match_id)
  ,foreign key(player_id) REFERENCES player(player_id)
  ,foreign key(match_id) REFERENCES match(match_id)
  ,foreign key(medal_type) REFERENCES medals(medal_type)
  ,CHECK (medal_type = 'gold' or medal_type = 'silver' or medal_type = 'bronze')
  ,CHECK (ranking>=0 and player_id>=0 and match_id>=0)
);

INSERT INTO participate VALUES(1, 1, '17.03 s', 1, 'gold');
INSERT INTO participate VALUES(3, 1, '17.13 s', 2, 'silver');
INSERT INTO participate VALUES(5, 1, '17.23 s', 3, 'bronze');
INSERT INTO participate VALUES(7, 1, '17.33 s', 4, null);



DROP TABLE participate;
DROP TABLE medals;
DROP TABLE match;
DROP TABLE player;
DROP TABLE country;
DROP TABLE sport cascade;
DROP TABLE category;
DROP TABLE spectator;
DROP TABLE ticket;