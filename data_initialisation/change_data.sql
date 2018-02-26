-- get the number of gold medals from each player of same country & add that total number to that country
Update country
	set gold_number = 
	(select sum(player.gold_number) from player
	 where country.cname = player.cname
	);


select * 
from country 
order by total_medal_number,gold_number,silver_number,bronze_number  desc;


update country
	SET total_medal_number = 
(
SELECT sum(country.gold_number)+
		sum(country.silver_number)+
		sum(country.bronze_number) 
FROM country where country.cname = 'France'
)
where country.cname = 'France'
;