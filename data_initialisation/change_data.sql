-- get the number of gold medals from each player of same country & add that total number to that country
Update country
	set gold_number = 
	(select sum(player.gold_number) from player
	 where country.cname = player.cname
	);


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
