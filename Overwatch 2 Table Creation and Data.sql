Dataset: My Player Stats from Overwatch 2
Source: Overwatch 2 / Blizzard / 
Queried using: Microsoft SQL Server

The following SQL Queries will show the creation of various tables and inserting data associated with each table

--TABLE 1 QUERY: The statistics across all characters.

Create Table Overall_Stats
(
	Games_Played int, 
	Games_Won int,
	Games_Lost int, 
	Eliminations int,
	Assists int, 
	Deaths int,
	Final_Blows int,
	Solo_Kills int,
	Damage int,
	Healing int,
	Objective_Kills int,
)

--TABLE 1 INSERT: Next we will insert the information for each of the above categories. 

INSERT INTO Overall_Stats VALUES
( 2175, 1076, 1098, 23178, 11406, 12188, 7325, 1317, 7264826, 6510166, 12520)



--TABLE 2 QUERY: This table includes the stats for the support heroes. 

Create Table Support_Hero
(
	Hero varchar(50), 
	Hero_Role varchar(50), 
	Games_Played int, 
	Games_Won int,
	Games_Lost int, 
	Eliminations int,
	Assists int, 
	Deaths int,
	Final_Blows int,
	Solo_Kills int,
	Damage int,
	Healing int,
	Objective_Kills int
)


--TABLE 2 INSERT: Next we will insert the values for the characters that are specifically in the support role. 
--Making sure that the inserted values properly align with the table fields above.

INSERT INTO Support_Hero VALUES
('Lucio', 'Support', 103, 62, 41, 693, 565, 639, 147, 15, 196935, 534021, 359),
('Moria', 'Support', 1279, 624, 655, 15014, 8728, 6941, 4249, 761, 4460743, 5332718, 8208),
('Baptiste', 'Support', 30, 15, 15, 193, 157, 183, 54, 6, 57941, 67873, 101)


--TABLE 3 QUERY: This table includes the stats for the tank heroes. 

Create Table Tank_Hero
(
	Hero varchar(50), 
	Hero_Role varchar(50), 	
	Games_Played int, 
	Games_Won int,
	Games_Lost int, 
	Eliminations int,
	Assists int, 
	Deaths int,
	Final_Blows int,
	Solo_Kills int,
	Damage int,
	Healing int,
	Objective_Kills int
)


--TABLE 3 INSERT: Next we will insert the values for the characters that are specifically in the TANK role. 
INSERT INTO Tank_Hero VALUES
('Sigma', 'Tank', 76, 35, 41, 862, 64, 387, 322, 54, 304513, NULL, 491),
('Zarya', 'Tank', 4, 1, 3, 21, 6, 36, 7, NULL, 9375, NULL, 8),
('D.VA', 'Tank', 30, 13, 17, 374, 62, 157, 122, 20, 104558, NULL, 189)


--TABLE 4 QUERY: This table includes the stats for the damage heroes. 

Create Table Damaget_Hero
(
	Hero varchar(50), 
	Hero_Role varchar(50), 
	Games_Played int, 
	Games_Won int,
	Games_Lost int, 
	Eliminations int,
	Assists int, 
	Deaths int,
	Final_Blows int,
	Solo_Kills int,
	Damage int,
	Healing int,
	Objective_Kills int
)

--TABLE 4 INSERT: Next we will insert the values for the characters that are specifically in the TANK role. 
  

INSERT INTO Damage_Hero VALUES
('Sojourn', 'Damage', 94, 45, 49, 1117, 200, 515, 349, 27, 345803, NULL, 618),
('Torbjorn', 'Damage', 173, 96, 78, 2274, 2, 1072, 1137, 305, 971875, NULL, 1151),
('Ashe', 'Damage', 13, 8, 5, 123, 11, 59, 50, 4, 38558, NULL, 72)
