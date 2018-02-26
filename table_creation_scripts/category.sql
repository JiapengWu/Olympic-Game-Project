CREATE TABLE if not exists cs421g19.category
(
  match_id INTEGER not null unique
  ,sname varchar(50) not null
  ,team_type VARCHAR(50) not null
  ,gender VARCHAR(50) not null
  ,PRIMARY KEY( sname,team_type,gender)
  ,foreign key(sname) REFERENCES sport(sname)
  ,FOREIGN KEY(match_id) REFERENCES match(match_id)
  CHECK (match_id>=0)
);

INSERT INTO category VALUES(1,'Freestyle', 'Single Player','male');
INSERT INTO category VALUES(2,'Sprint', 'Team Player', 'female');
INSERT INTO category VALUES(3,'Butterfly', 'Single Player','mixed');
