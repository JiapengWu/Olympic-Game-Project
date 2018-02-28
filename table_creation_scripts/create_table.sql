CREATE TABLE cs421g19.country
(
  cname varchar(50) not null unique
  ,total_medal_number INTEGER
  ,gold_number INTEGER 
  ,silver_number INTEGER
  ,bronze_number INTEGER
  ,PRIMARY KEY(cname)
  ,CHECK (gold_number>=0 and silver_number>=0 
  	and bronze_number>=0 and total_medal_number>=0)
);


CREATE TABLE cs421g19.player
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

CREATE TABLE cs421g19.sports
(
  sports_id INTEGER NOT NULL
  ,stype varchar(50) NOT NULL
  ,sname VARCHAR(50) NOT NULL
  ,distance INTEGER
  ,team_type VARCHAR(50) NOT NULL
  ,gender VARCHAR(50) NOT NULL
  ,UNIQUE (sname, distance, team_type, gender) 
  ,PRIMARY KEY(sports_id)
  ,CHECK (distance = 100 or distance = 200 or distance = 400 or distance = 800 or distance = 1000 or distance = 1500)
  ,CHECK(gender = 'male' or gender = 'female')
  ,CHECK(stype = 'Swimming' or stype = 'Athletics')
  ,CHECK(team_type = 'Single' or team_type = 'Team')
);


CREATE TABLE if not exists cs421g19.matches
(
   match_id INTEGER NOT null unique
  ,match_type VARCHAR(50)
  ,location VARCHAR(50) default 'Water Cube'
  ,match_date date not null default CURRENT_DATE
  ,sports_id INTEGER NOT null
  ,PRIMARY KEY(match_id)
  ,foreign KEY(sports_id) references sports(sports_id)  on delete cascade
  ,CHECK (match_type = 'final' or match_type = 'semi-final' or match_type = 'preliminary')
  ,CHECK (match_id >= 0)
);
CREATE TABLE cs421g19.participate
(
  player_id INTEGER not null
  ,match_id INTEGER not null
  ,result varchar(50) not null
  ,ranking INTEGER not null
  ,medal_type VARCHAR(50)
  ,PRIMARY KEY(player_id, match_id)
  ,foreign key(player_id) REFERENCES player(player_id)
  ,foreign key(match_id) REFERENCES matches(match_id)
  ,CHECK (medal_type = 'gold' or medal_type = 'silver' or medal_type = 'bronze')
  ,CHECK (ranking>=0 and player_id>=0 and match_id>=0)
);

CREATE TABLE cs421g19.spectator
(
   sid INTEGER NOT NULL unique
  ,sname varchar(50)
  ,PRIMARY KEY(sid)
);

CREATE TABLE cs421g19.ticket
(
   tid INTEGER
  ,match_id integer NOT null
  ,sid integer NOT null
  ,seat_number varchar(50) NOT NULL
  ,price float NOT NULL
  ,PRIMARY KEY(tid)
  ,foreign key(match_id) references matches(match_id)
  ,foreign key(sid) references spectator(sid)
  ,CHECK (tid>=0 and sid>=0 and match_id>=0 and price>=0.0)
);
