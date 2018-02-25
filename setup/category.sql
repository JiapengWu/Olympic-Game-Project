CREATE TABLE cs421g19.category
(
  match_id INTEGER unique
  ,sname varchar(50)
  ,team_type VARCHAR(50)
  ,gender VARCHAR(50)
  ,PRIMARY KEY( sname,team_type,gender)
  ,foreign key(sname) REFERENCES sport(sname)
);

INSERT INTO category VALUES(1,'Freestyle', 'Single Player','male');
INSERT INTO category VALUES(2,'Sprint', 'Team', 'female');
INSERT INTO category VALUES(3,'Butterfly', 'Single Player','mixed');
