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

create table contact(
contact_id 		int,
name 			varchar(50) not null,
city 			varchar(50),
phone  			varchar(20),
email_address 	varchar(50) unique,
primary key(contact_id)
); 
select * from contact;

create table high_temperature(
city				varchar(50),
year				int,
high_temperature	int,
constraint check (year between 1880 and 2200),
constraint check (high_temperature < 200),
primary key (city, year)
);

select * from high_temperature;

create table job(
job_id			int,
job_desc		varchar(100),
shift			varchar(50) default '9-5',
primary key (job_id)
);

show indexes from job;
show tables;

create database solar_system;
use solar_system;
create table planet(
planet_id		int,
planet_name		varchar(50)
);

create table ring(
planet_id		int,
ring_tot		int
);

insert into planet (planet_id, planet_name)
values
(1, 'Mercury'),
(2, 'Venus'),
(3, 'Earth'),
(4, 'Mars'),
(5, 'Jupiter'),
(6, 'Saturn'),
(7, 'Uranus'),
(8, 'Neptune');

insert into ring (planet_id, ring_tot)
values
(5, 3),
(6, 7),
(7, 13),
(8, 6);

select * from planet;
select * from ring;


select 	p.planet_id,
		r.planet_id
from 	planet as p, ring as r
where	p.planet_id = r.planet_id;

select 	p.planet_id,
		r.planet_id
from	planet as p
inner join ring as r
on 		p.planet_id = r.planet_id;

-- Exercise 5-1: Inner Join
select  p.planet_name,
        r.ring_tot
from    planet p
inner join ring r
on      p.planet_id = r.planet_id;

select  p.planet_name,
        r.ring_tot
from planet p 
left outer join ring r
on p.planet_id = r.planet_id;

select		p.planet_name,
			r.ring_tot
from ring r
right outer join planet p
on p.planet_id = r.planet_id;
		








