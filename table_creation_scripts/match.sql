drop table match cascade;
CREATE TABLE cs421g19.match
(
   match_id INTEGER NOT null unique
  ,match_type VARCHAR(50)
  ,location VARCHAR(50) not null
  ,date date not null default CURRENT_DATE
  ,sports_name varchar(50) not null	
  ,PRIMARY KEY(match_id)
  ,FOREIGN KEY(sports_name) REFERENCES sport(sname)
  ,check (match_type = 'final' or match_type = 'semi-final' or match_type = 'preliminary')
);

--ALTER TABLE match
--add CONSTRAINT fk_gender
--  	FOREIGN key(gender) REFERENCES category(gender)
--  	ON DELETE cascade;
--add CONSTRAINT fk_team_type
--  		FOREIGN key(team_type) REFERENCES category(team_type)
--  		ON DELETE cascade;
  	


INSERT INTO match VALUES(1, 'final',		'Main gym', 			'2018-03-01', 'Breaststroke');
INSERT INTO match VALUES(2, 'semi-final', 	'field house', 			'2018-03-02', 'Javelin Throw');
INSERT INTO match VALUES(3, 'preliminary', 	'here', 				'2018-03-02', 'Freestyle');
INSERT INTO match VALUES(4, 'preliminary', 	'there', 				'2018-03-03', 'Sprint');
INSERT INTO match VALUES(5, 'preliminary',	'everywhere', 			'2018-03-04', 'Butterfly');


