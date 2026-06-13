use da;

create table players
(
player_id int,
player_name varchar(20),
country varchar(20),
goals int
);

insert into players values 
(1,'Ronaldo','portugal',100),
(2,'messi','argentina',90),
(3,'neymar','brazil',80),
(4,'sunil','india',110),
(5,'jagadish','usa',89),
(6,'peddi','india',50);

select * from players ;

#1ST
delimiter &&
CREATE PROCEDURE top_player()
BEGIN
SELECT player_name, country, goals FROM players WHERE goals > 100;
END &&
DELIMITER ;

call top_player();

#2ND
delimiter //
create procedure top_player_sort_by_goal(in num int)
begin
select player_name, country, goals FROM players order by goals desc limit num ;
end //
delimiter ;

call top_player_sort_by_goal(2);
set sql_safe_updates=0;

#3TH
delimiter //
create procedure update_player(in num int,in player varchar(20))
begin
update players set goals=num where player_name=player;
end //
delimiter ;
 
 call update_player(200,'peddi');
 
 #4TH
 delimiter //
 create procedure player_count_country(in var varchar(25),out total_players int)
 begin 
 select count(*) from players where country=var into total_players;
 end //
 delimiter ;
 
call player_count_country('india',@total_count);
select @total_count as player_count_country;


