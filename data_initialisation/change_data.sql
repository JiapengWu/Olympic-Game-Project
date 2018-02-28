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
where player_id <= 5
union
select match_id from participate 
));

-- if match is final increase price and change seat numberto "final"

update ticket 
set price = price +100, seat_number = concat( seat_number,'Final')
where exists
(
	 
	select match_id from ticket	
	intersect
	(select match_id from match
	where match_type = 'final') 


);