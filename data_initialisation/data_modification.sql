-- Update data values
Update match
set location = 'Main Stadium' , date = '01/01/01'
where match_id = 1;

-- Delete data values
delete from ticket
where price < 50.00;

-- Insert a value that is a result of a query
insert into sport (itemid,location1) 
select itemid,quantity from table_1 where locationid=1 ;

-- Insert values resulted from a query
INSERT INTO player VALUES(
	select total_medal_number from country 						-- player_id
		where gold_number < 2
		limit 1
	,select silver_number from player 
		where silver_number = 0
		limit 1						-- player name
	,'female'													-- genre	
	,select cname from country where							-- country name
		cname like &c&		
	)
	,0															-- gold medal #
	,0															-- silver medal #
	,0															-- bronze medal #
);



INSERT INTO player VALUES(1, 'David Gilbert','female','Japan', 6, 6, 6);
