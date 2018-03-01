
-- find the best  gold winner per country
select cname,gold_number,pname from player
where gold_number > 0
group by cname,pname,gold_number
order by max(gold_number) desc;

--Find all player female player who got gold and participate in a single type swimming match
 	select pname, gold_number, gender from player
 	where gender = 'Female' and player_id = any
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

-- find the Canadian who has won the most gold medals

select pname, gold_number from player
where cname = 'Canada'
and gold_number = (
	select max(gold_number) from player
	where cname = 'Canada'
	)



-- Find female with the most gold medals from country with most total medals

select pname, gold_number from player
where cname in (select cname from country where gold_number = (
			select max(gold_number) from country
			)
		)
	and gender = 'Female';
	and gold_number = (
	select max(gold_number) from player
		where gender = 'Female' and cname in
		(select cname from country where gold_number = (
			select max(gold_number) from country
			)
		)
	);
 

-- Getting result and ranking of players from matches on final day (gives something weird!!!)

select p.result, p.ranking, m.match_date from participate p inner join matches m
on p.match_id = m.match_id
where m.match_date >= all
  (select m.match_date from matches);

-- Finding dates and distance of all backstroke events

select m.match_date, s.distance from matches m inner join sports s
on m.sports_id = s.sports_id
where s.sname = 'Backstroke';

select pname, cname, gender from player where cname = 'China';

-- find the best  medal winner athlete per country
select cname,pname ,gold_number,silver_number,bronze_number from player
where gold_number > 0
group by cname,pname,gold_number,silver_number,bronze_number
order by max(gold_number),max(silver_number),max(bronze_number) ;

--Find all player female player who got gold and participate in a swimming match of type single
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
 				where stype = 'Swimming'and team_type = 'Single' and gender = 'female'
			)
 		)
 	);

-- find average medals won by athletes from each country  ex: a1 won 3 medals, A2 won 0 => avg 1.5

select cname,avg(player.gold_number)+avg(player.silver_number)+avg(player.bronze_number)/3.0 as average_medal_won_per_athlete_per_country from player
group by cname order by average_medal_won_per_athlete_per_country desc
;

--find all matches with price under 100 with russian participant


		select tid,price, player_id,participate.match_id from participate
		inner join
		ticket on ticket.match_id = participate.match_id
		where price < 100 and player_id = any
			(select player_id from player where cname = 'Russia');
