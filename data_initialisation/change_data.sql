-- get the number of gold medals from each player of same country & add that total number to that country
Update country
	set gold_number = 
	(select sum(player.gold_number) from player
	 where country.cname = player.cname
	);
