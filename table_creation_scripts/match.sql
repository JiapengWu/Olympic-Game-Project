drop table match cascade;
CREATE TABLE if not exists cs421g19.matches
(
   match_id INTEGER NOT null unique
  ,match_type VARCHAR(50)
  ,location VARCHAR(50) default 'main Stadium'
  ,match_date date not null default CURRENT_DATE
  ,sports_name varchar(50) not null	
  ,distance INTEGER NOT null
  ,PRIMARY KEY(match_id)
  ,FOREIGN KEY(sports_name) REFERENCES sport(sname)
  ,FOREIGN KEY(distance) REFERENCES sport(distance)
  ,CHECK (match_type = 'final' or match_type = 'semi-final' or match_type = 'preliminary')
  ,CHECK (match_id >= 0)
);
