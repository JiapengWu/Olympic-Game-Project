drop table category;
CREATE TABLE cs421g19.category
(
  match_id INTEGER not null unique
  ,sname varchar(50)
  ,team_type VARCHAR(50)
  ,gender VARCHAR(50)
  ,PRIMARY KEY( sname,team_type,gender)
  ,foreign key(sname) REFERENCES sport(sname)
  ,CONSTRAINT fk_match_id
  	FOREIGN KEY(match_id) REFERENCES match(match_id)
  	ON DELETE CASCADE
);

INSERT INTO category VALUES(1,'Freestyle', 'Single Player','male');
INSERT INTO category VALUES(2,'Sprint', 'Team Player', 'female');
INSERT INTO category VALUES(3,'Butterfly', 'Single Player','mixed');