drop table category cascade;
CREATE TABLE cs421g19.category
(
  sname varchar(50) NOT null
  ,sport_style VARCHAR(50)
  ,distance INTEGER
  ,team_type VARCHAR(50)
  ,gender VARCHAR(50)
  ,match_id INTEGER
  ,FOREIGN KEY(sname) REFERENCES sport(sname) ON DELETE CASCADE
  ,FOREIGN KEY(match_id) REFERENCES match (match_id) ON DELETE CASCADE
  ,PRIMARY KEY(sname, distance, team_type, gender)
  ,CHECK (match_id>=0)
);

INSERT INTO category VALUES('Swimming', 'Backstroke', 200, 'Single Player','male');
INSERT INTO category VALUES('Butterfly', 'Single Player','mixed');


INSERT INTO Sport VALUES('Backstroke', 200);
INSERT INTO Sport VALUES('Backstroke', 100);
INSERT INTO Sport VALUES('Breaststroke', 100);
INSERT INTO Sport VALUES('Butterfly', 100);
INSERT INTO Sport VALUES('Freestyle', 400);
