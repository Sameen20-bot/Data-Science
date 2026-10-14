create database fun;

use fun;

create table Players(
player_id int not null,
player_name varchar(25),
player_country varchar(25),
goals int,
primary key (player_id)
);

insert into Players values(1, "Cristiano Ronaldo", "Portugal", 1000);
insert into Players values(2, "Kylian Mbappe", "France", 900);
insert into Players values(3, "Arda Guler", "Turkey", 800);
insert into Players values(4, "Thomas Muler", "Germany", 700);
insert into Players values(5, "Muhammad Salah", "Egypt", 600);
insert into Players values(6, "Erling Haland", "Netherlands", 500);
insert into Players values(7, "Mesut Ozil", "Germany", 400);
insert into Players values(8, "Jude Bellingham", "England", 300);
insert into Players values(9, "Sergio Ramos", "Spain", 200);
insert into Players values(10, "Lamine Yamal", "Spain", 100);

delimiter &&
create procedure players_goals()
begin
select player_name, goals from Players where goals > 6;
end &&
delimiter ;

call players_goals();

delimiter &&
create procedure top_players_goals(in var int)
begin
select player_name, goals from Players order by goals desc limit var;
end &&
delimiter ;

call top_players_goals(5);

SET SQL_SAFE_UPDATES = 0;

delimiter &&
create procedure goal_update(in num int, in st varchar(25))
begin
update Players set goals = num where player_name = st;
end &&
delimiter ;

call goal_update(950, "Cristiano Ronaldo");

SELECT * FROM players;

delimiter &&
create procedure top_players_goals_out(in var int, out top_goals int)
begin
select goals from Players order by goals desc limit var into top_goals;
end &&
delimiter ;

call top_players_goals_out(1, @top_goals);

select @top_goals as top_goal;