drop table sports cascade;
CREATE TABLE cs421g19.sports
(
  sports_id INTEGER NOT NULL
  ,stype varchar(50) NOT NULL
  ,sname VARCHAR(50) NOT NULL
  ,distance INTEGER
  ,team_type VARCHAR(50) NOT NULL
  ,gender VARCHAR(50) NOT NULL
--  ,match_id INTEGER
--  ,FOREIGN KEY(match_id) REFERENCES match (match_id) ON DELETE CASCADE
  ,UNIQUE (sname, distance, team_type, gender) 
  ,PRIMARY KEY(sports_id)
  ,CHECK (distance = 100 or distance = 200 or distance = 400 or distance = 800 or distance = 1000 or distance = 1500)
  ,CHECK(gender = 'male' or gender = 'female')
  ,CHECK(stype = 'Swimming' or stype = 'Athletics')
  ,CHECK(team_type = 'Single' or team_type = 'Team')
--  ,CHECK (match_id>=0)
);

INSERT INTO sports VALUES(1,'Swimming', 'Backstroke', 200, 'Single','male');
INSERT INTO sports VALUES(2,'Swimming', 'Breaststroke', 100, 'Single','female');
INSERT INTO sports VALUES(3,'Swimming', 'Butterfly', 200, 'Single','male');
INSERT INTO sports VALUES(4,'Swimming', 'Freestyle', 400, 'Single','male');
INSERT INTO sports VALUES(5,'Athletics', 'Running', 100, 'Single','male');
INSERT INTO sports VALUES(6,'Athletics', 'Running', 400, 'Single','male');
INSERT INTO sports VALUES(7,'Athletics', 'Running', 200, 'Single','female');
INSERT INTO sports VALUES(8,'Athletics', 'Javelin Throw', null, 'Single','female');
INSERT INTO sports VALUES(9,'Athletics', 'Relay Running', 400, 'Team','female');

