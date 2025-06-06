show databases;

create database cricus;
create database finance;
create database music;

drop database cricus;
DROP database circus;
DROP database finance;
DROP database music;

create database criptocurrency;
show databases;
drop database criptocurrency;
show databases;

create database land;

use land;

create table continent(
continent_id int,
continent_name varchar(20),
population bigint
);
show databases;

select * from continent;

create database athletic;
use athletic;


create table sport(
sport_id int,
sport_name varchar(50),
primary key (sport_id)
);

create table player(
player_id int,
player_name varchar(50),
player_age int,
sport_id int,
primary key (player_id),
foreign key (sport_id) references sport(sport_id)
);




