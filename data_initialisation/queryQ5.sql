
-- find the best  gold winner per country
select cname,gold_number,pname from player
where gold_number > 0 
group by cname,pname,gold_number
order by max(gold_number) desc;

--Find all player female player who got gold and participate in a single type swimming match 
 	select pname from player
 	where player_id = any
 	(
 		select player_id from player
 		where gold_number > 0 
 		intersect
 		select player_id from participate
 		where match_id = any
 		(
 			select match_id from matches
			where sports_id = any
			(
				select sports_id from sports --sub query --get sport id from sport that are single swimming	
 				where stype = 'Swimming'and team_type = 'Single'
			)
 		)
 	);

-- find average medals won by athletes from each country 

select cname,avg(player.gold_number)+avg(player.silver_number)+avg(player.bronze_number)/3.0 as average_medal_won_per_athlete_per_country from player
group by cname 
inner join
country on 
; 

		
 