create database game;
use game;
create table Account(Account_name varchar(50) primary key,
Password varchar(20) not null,LastSignedOn datetime,SbscrbrName varchar(200),
SbscrbrAddress varchar(200),SbscrbrEmail varchar(100),SbscrbrPhone int,
AccCreatedOn datetime);
create table Character1(Charname varchar(50) primary key,MaxHitPoints int,
Level int,ExpPoints int,Type varchar(50),MaxMana int,CurrHitPoints int,CurrMana int,
LastPlayed datetime,CreatedOn datetime,Account_name varchar(50),
RegionName varchar(50), foreign key(Account_name) references
Account(Account_name),foreign key(Regionname) references Region(Regionname));

create table Region(RegionName varchar(50) primary key, Climate varchar(50),
Precipitition varchar(100),Foliage varchar(100));

create table Item(ItemName varchar(50) primary key,ItemType varchar(50),
ItemDamage int);
create table ItemInstantiation(Idnum int  primary  key,Modifier varchar(50),
WhenCreated datetime,ItemName varchar(50),foreign key(ItemName)
 references Item(ItemName));
 alter table iteminstantiation add charname varchar(50);
 
 alter table iteminstantiation add foreign key(Charname) references
 Character1(Charname);
 
 create table Creep(Creepname varchar(50) primary key,Hitpoints int,mana int,attack int);
 
 create table CreepInstantiation (
    IDNum INT PRIMARY KEY,
    CreepName VARCHAR(100),
    RegionName VARCHAR(100),
         FOREIGN KEY (CreepName) REFERENCES Creep(CreepName),FOREIGN KEY (RegionName) REFERENCES Region(RegionName)
         );
         
create table RanInto (
    CharName VARCHAR(100),
    CreepID INT,
     PRIMARY KEY (CharName, CreepID),
	FOREIGN KEY (CharName) REFERENCES Character1(CharName),
    FOREIGN KEY (CreepID) REFERENCES CreepInstantiation(IDNum));
    ALTER TABLE Account MODIFY SbscrbrPhone VARCHAR(15);
 
INSERT INTO Account VALUES ('Player001','pass123','2026-02-25 10:00:00','Subscriber One','Bangalore, India','player1@email.com',
9876543210,'2026-01-01 09:00:00'),('Player002','pass456','2026-02-26 11:00:00','Subscriber Two','Chennai, India','player2@email.com',
9123456780,'2026-01-15 08:30:00');

INSERT INTO Region VALUES ('ForestLand','Tropical','Heavy Rainfall','Dense Trees'),('DesertZone','Hot','Low Rainfall','Sparse Plants'),
('IceWorld','Cold','Snowfall','Snow Trees');

INSERT INTO Character1 VALUES ('WarriorX',200,5,1500,'Warrior',100,180,80,'2026-02-26 18:00:00','2026-01-05 10:00:00','Player001','ForestLand'),
('MageY',150,7,2500,'Mage',200,140,160,'2026-02-27 17:00:00','2026-01-20 11:00:00','Player002','IceWorld');

INSERT INTO Item VALUES ('Sword','Weapon',50),('MagicStaff','Weapon',40),('Shield','Defense',20);

INSERT INTO ItemInstantiation VALUES (1,'Fire Boost','2026-02-26 12:00:00','Sword','WarriorX'),
(2,'Mana Boost','2026-02-26 13:00:00','MagicStaff','MageY'),(3,'Defense Boost','2026-02-26 14:00:00','Shield','WarriorX');

INSERT INTO Creep VALUES ('Goblin',100,30,20),('Dragon',500,200,80),('IceMonster',300,150,60);

INSERT INTO CreepInstantiation VALUES (101,'Goblin','ForestLand'),(102,'Dragon','DesertZone'),(103,'IceMonster','IceWorld');

INSERT INTO RanInto VALUES ('WarriorX',101),('WarriorX',102),('MageY',103);