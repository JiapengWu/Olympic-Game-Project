--drop table match cascade;
CREATE TABLE if not exists cs421g19.matches
(
   match_id INTEGER NOT null unique
  ,match_type VARCHAR(50)
  ,location VARCHAR(50) default 'Water Cube'
  ,match_date date not null default CURRENT_DATE
  ,sports_id INTEGER NOT NULL
  ,PRIMARY KEY(match_id)
  ,foreign KEY(sports_id) references sports(sports_id)
  ,CHECK (match_type = 'final' or match_type = 'semi-final' or match_type = 'preliminary')
  ,CHECK (match_id >= 0)
);


INSERT INTO matches VALUES(1,'final', 'Water Cube', '2008-08-09', 1);