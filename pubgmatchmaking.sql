use pubg;

select *from player; 

create table server(city varchar(30) primary key not null,province varchar(30),server_name varchar(30));

select *from server;

alter table player
add column city varchar(30);

alter table player
add constraint fk_city foreign key(city) references server(city);

select*from player;

alter table server add column pid int;

alter table server add constraint fk_pid foreign key(pid) references player(pid);

select*from server;

alter table server modify province varchar(60);

desc server;

insert into server(city, province, server_name, pid)
values
    ('Port Blair', 'Andaman and Nicobar Islands', 'India', 1),
    ('Vishakapatnam', 'Andhra Pradesh', 'India', 2),
    ('Bangalore', 'Karnataka', 'India', 3),
    ('Itanagar', 'Arunachal Pradesh', 'India', 4),
    ('Guwahati', 'Assam', 'India', 5),
    ('Patna', 'Bihar', 'India', 6),
    ('Raipur', 'Chattisgarh', 'India', 7),
    ('Chandigarh', 'Chandigarh', 'India', 8),
    ('Daman', 'Dadra and Nagar haveli and Daman and Diu', 'India', 9),
    ('NDMC', 'Delhi', 'India', 10),
    ('Goa Velha', 'Goa', 'India', 11),
    ('Ahmedabad', 'Gujarat', 'India', 12),
    ('Gurgaon', 'Haryana', 'India', 13),
    ('Shimla', 'Himachal Pradesh', 'India', 14),
    ('Srinagar', 'Jammu and Kashmir', 'India', 15),
    ('Ranchi', 'Jharkand', 'India', 16),
    ('Hubli and Dharwad', 'Karnataka', 'India', 17),
    ('Thiruvanantapuram', 'Kerala', 'India', 18),
    ('Indore', 'Madhya Pradesh', 'India', 19),
    ('Kavaratti', 'Lakshadweep', 'India', 20);
    
    
    update player set city= "Port Blair" WHERE pid=1; 
    
    select *from player;
    
    update player set city= "Vishakapatnam" WHERE pid=2;
    update player set city= "Bangalore" WHERE pid=3; 
    update player set city= "Itanagar" WHERE pid=4; 
    update player set city= "Guwahati" WHERE pid=5; 
    update player set city= "Patna" WHERE pid=6; 
    update player set city= "Raipur" WHERE pid=7; 
    update player set city= "Chandigarh" WHERE pid=8; 
    update player set city= "Daman" WHERE pid=9; 
    update player set city= "NDMC" WHERE pid=10; 
    update player set city= "Goa Velha" WHERE pid=11; 
    update player set city= "Ahmedabad" WHERE pid=12; 
    update player set city= "Gurgaon" WHERE pid=13; 
    update player set city= "Shimla" WHERE pid=14; 
    update player set city= "Srinagar" WHERE pid=15; 
    update player set city= "Ranchi" WHERE pid=16; 
    update player set city= "Hubli and Dharwad" WHERE pid=17; 
    update player set city= "Thiruvanantapuram" WHERE pid=18; 
    update player set city= "Indore" WHERE pid=19; 
    update player set city= "Kavaratti" WHERE pid=20;
    
    select*from player;
    
    
    
    select p.pid,p.city from player p join server s on s.pid=p.pid;
    select *from player;
    
    

create trigger calculate_popularity before update on player for each row
set new.popularity = old.popularity + ((new.likes - old.likes) * 5);

create table player_title(
pid int primary key not null,
title varchar(100));

insert into player_title(pid,title)
VALUES 
    (1, 'Well-Liked'),
    (2, 'Collector'),
    (3, 'Overachiever'),
    (4, 'Star Trainer'),
    (5, 'Perseverance'),
    (6, 'Perfectionist'),
    (7, 'Deadeye'),
    (8, 'Warhorse'),
    (9, 'Synergy Titles'),
    (10, 'Dependable'),
    (11, 'Cycle season tier Titles'),
    (12, 'Weapon Master'),
    (13, 'Maxed Out'),
    (14, 'Pacifist'),
    (15, 'Chicken Master'),
    (16, 'Glass Cannon/Commando'),
    (17, 'Unique Destiny'),
    (18, 'Mythic Fashion'),
    (19, 'On a mission'),
    (20, 'Veteran');

create table player_avatar(pid int primary key not null, avatar varchar(100));

insert into player_avatar(pid, avatar)
values 
    (1, 'Newbie'),
    (2, 'Berserker'),
    (3, 'Sharpshooter'),
    (4, 'Rookie'),
    (5, 'Lone Wolf'),
    (6, 'Speed Demon'),
    (7, 'RP Avatar (M7)'),
    (8, 'RP Avatar (M6)'),
    (9, 'RP Avatar (M1)'),
    (10, 'RP Avatar (M5)'),
    (11, 'Domination'),
    (12, 'Healer'),
    (13, 'Elite Squad'),
    (14, '100 Finishes'),
    (15, 'Dynamic Duo'),
    (16, 'Top 10 Regular'),
    (17, 'Chicken Lover'),
    (18, 'Trendy Social Butterfly'),
    (19, 'Conqueror'),
    (20, 'Grenadier'),
    (21, 'Sniper');
    
create table Account_Level (
pid int primary key,
account_Level int
);

insert into Account_Level (Pid, Account_Level)
values 
    (1, 31),
    (2, 43),
    (3, 55),
    (4, 69),
    (5, 72),
    (6, 40),
    (7, 58),
    (8, 61),
    (9, 73),
    (10, 29),
    (11, 83),
    (12, 28),
    (13, 47),
    (14, 64),
    (15, 67),
    (16, 37),
    (17, 43),
    (18, 53),
    (19, 72),
    (20, 78);
    
create table player_achievement_points (
pid int primary key,
achievement_points int
);

drop table player_achievement_points ;

insert into player_achievement_points (Pid, achievement_points)
values 
    (1, 3565),
    (2, 2900),
    (3, 5580),
    (4, 6000),
    (5, 1540),
    (6, 3475),
    (7, 2385),
    (8, 1225),
    (9, 1300),
    (10, 4400),
    (11, 3460),
    (12, 2395),
    (13, 4005),
    (14, 5040),
    (15, 6700),
    (16, 1900),
    (17, 805),
    (18, 6100),
    (19, 3325),
    (20, 2115);

create table player_evo_level (
    pid int primary key,
    evo_level int
);

insert into player_evo_level(Pid, evo_level)
values 
    (1, 34),
    (2, 70),
    (3, 61),
    (4, 55),
    (5, 43),
    (6, 43),
    (7, 80),
    (8, 31),
    (9, 74),
    (10, 89),
    (11, 100),
    (12, 67),
    (13, 58),
    (14, 90),
    (15, 83),
    (16, 47),
    (17, 71),
    (18, 47),
    (19, 30),
    (20, 42);
    
create table game_mode (
    game_mode_id int not null,
    pid int not null,
    primary key (game_mode_id,pid),
    mode varchar(255),
    sub_mode varchar(255),
    event_status varchar(255),
    player_type varchar(255),
    perspective varchar(255),
    auto_matching varchar(255)
);


insert into game_mode(game_mode_id,pid,mode, sub_mode,event_status, player_type, perspective, auto_matching)
values
    (101,1,'Ranked', 'Classic', 'skyhigh spectacle', 'Solo', 'TPP', 'Yes'),
    (101,2,'Ranked', 'Classic','skyhigh spectacle', 'Solo', 'TPP', 'Yes'),
    (103,3,'Ranked', 'Classic','no event', 'Duo', 'FPP', 'No'),
    (104,4,'Unranked', 'Arena', 'no event', 'Squad', 'FPP', 'Yes'),
    (103,5,'Ranked', 'Classic', 'no event', 'Duo', 'FPP', 'No'),
    (103,6,'Ranked', 'Classic', 'no event', 'Duo', 'FPP', 'No'),
    (104,7,'Unranked', 'Arena', 'no event', 'Squad', 'FPP', 'Yes'),
    (102,8,'Unranked', 'Arena', 'no event', 'Solo', 'TPP', 'Yes'),
    (104,9,'Unranked', 'Arena', 'no event', 'Squad', 'FPP', 'Yes'),
    (102,10,'Unranked', 'Arena', 'no event', 'Solo', 'TPP', 'Yes'),
    (111,11,'Ranked', 'Classic', 'skyhigh spectacle', 'Duo', 'FPP', 'Yes'),
    (111,12,'Ranked', 'Classic', 'skyhigh spectacle', 'Duo', 'FPP', 'Yes'),
    (113,13,'Ranked', 'Classic','skyhigh spectacle', 'Solo', 'TPP', 'Yes'),
    (114,14,'Unranked', 'Classic','no event', 'Duo', 'FPP', 'Yes'),
    (113,15,'Ranked', 'Classic','skyhigh spectacle', 'Solo', 'TPP', 'Yes'),
    (116,16,'Unranked', 'Arena', 'no event', 'Squad', 'FPP', 'Yes'),
    (113,17,'Ranked', 'Classic','skyhigh spectacle', 'Solo', 'TPP', 'Yes'),
    (116,18,'Unranked', 'Arena','no event', 'Squad', 'FPP', 'Yes'),
    (113,19,'Ranked', 'Classis','skyhigh spectacle', 'Solo', 'TPP', 'Yes'),
    (120,20,'Ranked', 'Arena', 'no event', 'Duo', 'FPP', 'Yes');
    
create table mode_submode(
    game_mode_id int,
    pid int,
    mode varchar(50),
    sub_mode varchar(50),
    map varchar(50),
    primary key(game_mode_id,pid,mode,sub_mode)
    );
    
insert into mode_submode(game_mode_id,pid,mode,sub_mode,map)
values
    (101,1,'Ranked', 'Classic', 'Livik'),
    (101,2,'Ranked', 'Classic','Livik'),
    (103,3,'Ranked', 'Classic','Nusa'),
    (104,4,'Unranked', 'Arena', 'TDM'),
    (103,5,'Ranked', 'Classic', 'Nusa'),
    (103,6,'Ranked', 'Classic', 'Nusa'),
    (104,7,'Unranked', 'Arena', 'TDM'),
    (102,8,'Unranked', 'Arena', 'Gun game'),
    (104,9,'Unranked', 'Arena', 'TDM'),
    (102,10,'Unranked', 'Arena', 'Gun game'),
    (111,11,'Ranked', 'Classic', 'Livik'),
    (111,12,'Ranked', 'Classic', 'Livik'),
    (113,13,'Ranked', 'Classic', 'Sanhok'),
    (114,14,'Unranked', 'Classic', 'Assault'),
    (113,15,'Ranked', 'Classic', 'Sanhok'),
    (116,16,'Unranked', 'Arena', '8 V 8 TDM'),
    (113,17,'Ranked', 'Classic', 'Sanhok'),
    (116,18,'Unranked', 'Arena', '8 v 8 TDM'),
    (113,19,'Ranked', 'Classis', 'Sanhok'),
    (120,20,'Ranked', 'Arena', 'Domination');
    
create table matchmake(
    match_id int,
    pid int ,
    primary key(match_id,pid),
    ranking INT,
    rating INT,
    in_time datetime,
    out_time datetime,
    duration int,
    bp INT,
    rp INT,
    grade VARCHAR(255));
    
insert into matchmake(match_id,pid,ranking,rating,in_time, out_time, duration,bp,rp,grade)
values
    (101,1,25,32,'2022-03-01 10:00:00', '2022-03-01 10:30:00', 30, 400, 30, 'SSS'),
    (101,2,1,99,'2022-03-01 10:00:00', '2022-03-01 10:30:00', 30, 300, 200,'AAA'),
    (103,3,23,11,'2022-03-01 11:00:00', '2022-03-01 11:30:00', 30, 100, 400, 'BB'),
    (104,4,1,98,'2022-03-01 12:00:00', '2022-03-01 12:30:00', 30, 145, 45, 'AAA+'),
    (103,5,12,85,'2022-03-01 11:00:00', '2022-03-01 11:30:00', 30, 33, 200, 'DDD'),
    (103,6,50,2,'2022-03-01 11:00:00', '2022-03-01 11:30:00', 30, 298, 500, 'BBB'),
    (104,7,25,13,'2022-03-01 12:00:00', '2022-03-01 12:30:00', 30, 700, 190, 'CCC'),
    (102,8,1,99,'2022-03-01 13:00:00', '2022-03-01 13:30:00', 30, 500, 385, 'EEE'),
    (104,9,2,97,'2022-03-01 12:00:00', '2022-03-01 12:30:00', 30, 890, 200, 'A'),
    (102,10,3,94,'2022-03-01 13:00:00', '2022-03-01 13:30:00', 30, 560, 200, 'AA'),
    (111,11,5,97,'2022-03-01 14:00:00', '2022-03-01 14:30:00', 30, 456, 50, 'C'),
    (111,12,6,98,'2022-03-01 14:00:00', '2022-03-01 14:30:00', 30, 500, 100, 'DD'),
    (113,13,3,99,'2022-03-01 15:00:00', '2022-03-01 15:30:00', 30, 439, 0, 'AAA'),
    (114,14,7,90,'2022-03-01 16:00:00', '2022-03-01 16:30:00', 30, 320, 250, 'A+'),
    (113,15,1,96,'2022-03-01 15:00:00', '2022-03-01 15:30:00', 30, 321, 0, 'SS'),
    (116,16,1,99,'2022-03-01 17:00:00', '2022-03-01 17:30:00', 30, 439, 0, 'SSS'),
    (113,17,4,89,'2022-03-01 15:00:00', '2022-03-01 15:30:00', 30, 321, 0, 'AAA'),
    (116,18,3,94,'2022-03-01 17:00:00', '2022-03-01 17:30:00', 30, 459, 0, 'D'),
    (113,19,100,0,'2022-03-01 15:00:00', '2022-03-01 15:30:00', 30, 65, 10, 'SSS+'),
    (120,20,50,0,'2022-03-01 18:00:00', '2022-03-01 18:30:00', 30, 0, 20, 'AAA');
    
create table matchtime(match_id int,pid int,primary key(match_id,pid), in_time datetime,out_time datetime);

insert into matchtime(match_id,pid,in_time,out_time)
values
    (101, 1, '2022-03-01 10:00:00', '2022-03-01 10:30:00'),
    (101, 2, '2022-03-01 10:00:00', '2022-03-01 10:30:00'),
    (103, 3, '2022-03-01 11:00:00', '2022-03-01 11:30:00'),
    (104, 4, '2022-03-01 12:00:00', '2022-03-01 12:30:00'),
    (103, 5, '2022-03-01 11:00:00', '2022-03-01 11:30:00'),
    (103, 6, '2022-03-01 11:00:00', '2022-03-01 11:30:00'),
    (104, 7, '2022-03-01 12:00:00', '2022-03-01 12:30:00'),
    (102, 8, '2022-03-01 13:00:00', '2022-03-01 13:30:00'),
    (104, 9, '2022-03-01 12:00:00', '2022-03-01 12:30:00'),
    (102, 10, '2022-03-01 13:00:00', '2022-03-01 13:30:00'),
    (111, 11, '2022-03-01 14:00:00', '2022-03-01 14:30:00'),
    (111, 12, '2022-03-01 14:00:00', '2022-03-01 14:30:00'),
    (113, 13, '2022-03-01 15:00:00', '2022-03-01 15:30:00'),
    (114, 14, '2022-03-01 16:00:00', '2022-03-01 16:30:00'),
    (113, 15, '2022-03-01 15:00:00', '2022-03-01 15:30:00'),
    (116, 16, '2022-03-01 17:00:00', '2022-03-01 17:30:00'),
    (113, 17, '2022-03-01 15:00:00', '2022-03-01 15:30:00'),
    (116, 18, '2022-03-01 17:00:00', '2022-03-01 17:30:00'),
    (113, 19, '2022-03-01 15:00:00', '2022-03-01 15:30:00'),
    (120, 20, '2022-03-01 18:00:00', '2022-03-01 18:30:00');

create table match_duration(match_id int,pid int,primary key(match_id,pid),duration int);

insert into match_duration(match_id,pid,duration)
values
    (101, 1, 30),
    (101, 2, 30),
    (103, 3, 30),
    (104, 4, 30),
    (103, 5, 30),
    (103, 6, 30),
    (104, 7, 30),
    (102, 8, 30),
    (104, 9, 30),
    (102, 10, 30),
    (111, 11, 30),
    (111, 12, 30),
    (113, 13, 30),
    (114, 14, 30),
    (113, 15, 30),
    (116, 16, 30),
    (113, 17, 30),
    (116, 18, 30),
    (113, 19, 30),
    (120, 20, 30);
    
create table player_stats1(pid int primary key not null,season char(20));

insert into player_stats1(pid,season)values
(1, 'C5S16'),
    (2,'C5S16'),
    (3, 'C5S16'),
    (4, 'C5S16'),
    (5, 'C5S16'),
    (6, 'C5S16'),
    (7, 'C5S16'),
    (8, 'C5S16'),
    (9, 'C5S16'),
    (10, 'C5S16'),
    (11, 'C5S16'),
    (12, 'C5S16'),
    (13, 'C5S16'),
    (14, 'C5S16'),
    (15, 'C5S16'),
    (16,'C5S16'),
    (17, 'C5S16'),
    (18, 'C5S16'),
    (19, 'C5S16'),
    (20, 'C5S16');
    
create table player_stats2(pid int primary key not null,season char(20),tier varchar(30),matches_played int);

insert into player_stats2(pid,season,tier,matches_played)values
    (1, 'C5S16', 'Silver 1', 1500),
    (2, 'C5S16', 'Silver 1', 2500),
    (3, 'C5S16', 'Platinum 5', 3000),
    (4, 'C5S16', 'Diamond 1', 4500),
    (5, 'C5S16', 'Platinum 5', 5500),
    (6, 'C5S16', 'Platinum 5', 6000),
    (7, 'C5S16', 'Diamond 1', 8000),
    (8, 'C5S16', 'Ace Dominator 5', 8500),
    (9, 'C5S16', 'Diamond 1', 10000),
    (10, 'C5S16', 'Ace Dominator 5', 1800),
    (11, 'C5S16', 'Gold 4', 2700),
    (12, 'C5S16', 'Gold 4', 3200),
    (13, 'C5S16', 'Diamond 1', 4800),
    (14, 'C5S16', 'Conqueror', 5800),
    (15, 'C5S16', 'Diamond 1', 6300),
    (16, 'C5S16', 'Acemaster 5', 8200),
    (17, 'C5S16', 'Diamond 1', 8700),
    (18, 'C5S16', 'Acemaster 5', 10500),
    (19, 'C5S16', 'Diamond 1', 2900),
    (20, 'C5S16', 'Conqueror', 3400);
    
DELIMITER //
create trigger increase_account_level 
after update on player_evo_level 
for each row
begin 
    if new.evo_level - old.evo_level >= 5 then
        update Account_Level 
        set account_Level = account_Level + 1 
        where pid = new.pid; 
    end if; 
end; //
DELIMITER ;

DELIMITER //
CREATE TRIGGER update_matches_played 
AFTER INSERT ON matchmake 
FOR EACH ROW 
BEGIN 
    UPDATE player_stats2 
    SET matches_played = matches_played + 1 
    WHERE pid = NEW.pid; 
END; //
DELIMITER ;


create view player_match_view as
select m.match_id,m.pid,p.ingamename,p.likes,p.merit,g.auto_matching,g.perspective,al.account_Level,pap.achievement_points,pel.evo_level,ps2.season,ps2.matches_played
from matchmake m
join player p on m.pid = p.pid
join game_mode g on m.match_id= g.game_mode_id and m.pid = g.pid
join Account_Level al on m.pid = al.pid
join player_achievement_points pap on m.pid = pap.pid
join player_evo_level pel on m.pid = pel.pid
join player_stats2 ps2 on m.pid = ps2.pid
where p.likes >= 800
  and p.merit >= 85
  and g.auto_matching = 'Yes'
  and g.perspective = 'FPP'
  and al.account_Level > 20
  and pap.achievement_points > 999
  and pel.evo_level > 30
  and ps2.season like 'C5S16'
  and ps2.matches_played > 1000;
  
select match_id,
       pid,
       ingamename,
       likes,
       merit,
       auto_matching,
       perspective,
       account_Level,
       achievement_points,
       evo_level,
       season,
       matches_played from player_match_view;
       

       
       




