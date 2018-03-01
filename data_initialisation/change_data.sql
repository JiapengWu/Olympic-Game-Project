

-- update give a medal to each player who won 1st, 2nd or 3rd place in  a 'finals' match
-- if the player won more than one medal (participated in multiple matches) give him the right number of medals
do $$
  declare
    arow record;
	BEGIN
	    FOR arow IN SELECT player_id FROM (
			SELECT player_id FROM participate p
			right JOIN matches ON matches.match_type = 'final' and p.match_id = matches.match_id
			) s
	    LOOP
	        UPDATE player
				SET gold_number = (select count(*) from participate p where ranking = 1 and p.player_id = arow.player_id)
				,silver_number = (select count(*) from participate p where ranking = 2 and p.player_id = arow.player_id)
				,bronze_number = (select count(*) from participate p where ranking = 3 and p.player_id = arow.player_id)
				where player_id = arow.player_id;
--        RETURN NEXT arow; -- return current row of SELECT
	    END LOOP;
	END; $$

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
	total_medal_number = 
	(select sum(player.gold_number)+sum(player.silver_number)+sum(player.bronze_number) from player
	 where country.cname = player.cname
	);

-- order countries by total number of medals in decreasing order for aesthetics
select * 
from country 
order by total_medal_number,gold_number,silver_number,bronze_number  desc;


-- if player participate in some match then increase the match ticket price 
-- maybe later if match is final or if player has gold medals 

update ticket
set price = price +30
where price = any
(
	select price from ticket 
	where match_id = any
	(
	select match_id from participate
	where player_id <= 5
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

