-- Create James Bond data Table
CREATE TABLE james_bond_data (
	Year INT,
	Movie TEXT PRIMARY KEY NOT NULL,
	Actor TEXT,
	Director TEXT,
	Composer TEXT,
	Writer TEXT,
	Cinematographer TEXT,
	Film_Location TEXT,
	Shooting_Location TEXT,
	Bond_Car TEXT,
	Bond_Girl_Nat TEXT,
	US_Grossing FLOAT,
	US_Gross_adj_2013 FLOAT,
	US_Gross_adj_2020 FLOAT,
	World_Gross FLOAT,
	World_Gross_adj_2013 FLOAT,
	World_Gross_adj_2020 FLOAT,
	Budget FLOAT,
	Budget_adj_2013 FLOAT,	
	Budget_adj_2020 FLOAT,
	Film_Length INT,
	AVG_IMDB_Rating FLOAT,
	AVG_RTN_Tom_Rating FLOAT,
	Conquest INT,
	Martinis INT,
	BJB INT,
	Kills_Bond INT,
	Kills_Others INT,
	Top_100_soundtrack INT,
	Video_Game INT
	);

CREATE TABLE bond_girl_data (
	bond_girl_name TEXT,
	actress_age int,
	film_title text,
	film_release_year int,
	bond_actor text,
	bond_actor_age int,
	director_name text,
	box_office_actual_$ float,
	box_office_adjusted_2005 float,
	budget_actual_$ float,
	budget_adjusted_2005 float
	);

CREATE TABLE bond_girl_data_cleaned (
	actress_age int,
	film_title text,
	bond_actor_age int,
	average_bond_girl_age float,
	film_release_year int,
	bond_actor text,
	bond_actress TEXT,
	'difference' float
	);

CREATE TABLE country_revenue (
	country TEXT,
	release_date TEXT,
	opening_revenue FLOAT,
	opening_adj_2020 FLOAT,
	gross_revenue FLOAT,
	gross_adj_2020 FLOAT,
	movie text
	);

CREATE TABLE bond_votes (
	option TEXT,
	votes INT
	);

-- This was done as we cannot import the rgb information directly via pgAdmin csv Import
ALTER TABLE bond_votes
ADD COLUMN color TEXT;

UPDATE bond_votes
SET color = 'rgb(255, 99, 132)'
WHERE option='Richard Madden';

UPDATE bond_votes
SET color = 'rgb(54, 162, 235)'
WHERE option='Tom Hardy';

UPDATE bond_votes
SET color = 'rgb(36, 36, 36)'
WHERE option='Lashana Lynch';

UPDATE bond_votes
SET color = 'rgb(255, 159, 64)'
WHERE option='Henry Cavill';

UPDATE bond_votes
SET color = 'rgb(75, 192, 192)'
WHERE option='Regé-Jean Page';

UPDATE bond_votes
SET color = 'rgb(255, 206, 86)'
WHERE option='James Norton';

UPDATE bond_votes
SET color = 'rgb(153, 102, 255)'
WHERE option='Idris Elba';