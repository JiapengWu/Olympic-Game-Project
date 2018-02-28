-- get the number of medals from each player of same country 
-- add it to each respective medal count of that country 
-- then calculate the total number of medals for that country
Update country
	set gold_number = 
	(select sum(player.gold_number) from player
	 where country.cname = player.cname
	),
	silver_number = 
	(select sum(player.silver_number) from player
	 where country.cname = player.cname
	),
	bronze_number = 
	(select sum(player.bronze_number) from player
	 where country.cname = player.cname
	),
	total_medal_number = gold_number + silver_number + bronze_number;


select * 
from country 
order by total_medal_number,gold_number,silver_number,bronze_number  desc;

-- if player participate in some match then increase the match ticket price 
-- maybe later if match is final or if player has gold medals 

update ticket
	set price = price +30
	where exists
	(
	select price from ticket 
	where exists
		(select match_id from participate
		where player_id = 5
		union
		select match_id from participate
		)
	);

-- if match is final increase price and change seat numberto "final"

update ticket 
set price = price +100, seat_number = concat( seat_number,'Final')
where exists
(
	select match_id from ticket	
	intersect
	(select match_id from matches
	where match_type = 'final')
);





-- update give a 1 medal to each player who won 1st, 2nd or 3rd place in  a 'finals' match
UPDATE player
SET gold_number = 
	(case when player_id = any
		(SELECT player_id	FROM participate p
		right JOIN matches ON matches.match_type = 'final' and p.match_id = matches.match_id 
		WHERE ranking = 1) then gold_number+1 else gold_number end),
		
	silver_number = 
	(case when player_id = any
		(SELECT player_id	FROM participate p
		right JOIN matches ON matches.match_type = 'final' and p.match_id = matches.match_id 
		WHERE ranking = 2) then silver_number+1 else silver_number end),
		
	bronze_number =
	(case when player_id = any
		(SELECT player_id	FROM participate p
		right JOIN matches ON matches.match_type = 'final' and p.match_id = matches.match_id 
		WHERE ranking = 3)then bronze_number+1 else bronze_number end);



--reset medal count for all players
UPDATE player
SET gold_number = 
	(case when player_id = any
		(SELECT player_id	FROM participate p
		right JOIN matches ON matches.match_type = 'final' and p.match_id = matches.match_id 
		WHERE ranking = 1) then 0 else 0 end),
		
	silver_number = 
	(case when player_id = any
		(SELECT player_id	FROM participate p
		right JOIN matches ON matches.match_type = 'final' and p.match_id = matches.match_id 
		WHERE ranking = 2) then 0 else 0 end),
		
	bronze_number =
	(case when player_id = any
		(SELECT player_id	FROM participate p
		right JOIN matches ON matches.match_type = 'final' and p.match_id = matches.match_id 
		WHERE ranking = 3)then 0 else 0 end);