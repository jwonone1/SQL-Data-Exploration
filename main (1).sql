-- Data Exploration using the Tutorial.Housing_Unit_Completed_US Dataset

  SELECT *
	 FROM tutorial.housing_units_completed_us LIMIT 100;
	
	-- I want to see only unites completed between the years 1970 and 1972
	
	 SELECT * 
	 FROM tutorial.housing_units_completed_us
	 where year between 1970 and 1972;
	 
	 -- What the total units completed for each region in the 1970s
	 
	 select year, sum(south) as south, sum(west) as west, sum(midwest) as midwest, sum(northeast) as northeast
	 FROM tutorial.housing_units_completed_us
	 where year = 1970
	 group by year;
	 
	 -- In the year 1970 there was a total of 594.8 units for the south, 315.5 for the west, 323.3 for the midwest, 185 for the northeast.
	 
	 -- Now  I want to know the grand total of completed units the year 1970
	 
	 select year, sum(south + west + midwest + northeast) as total
	 FROM tutorial.housing_units_completed_us
	 where year = 1970
	 group by year;
	 
	-- grand total is 1418.6
	

   -- I want to see all the max and the minmal unit completed in the year 1970

 select year,  max(south) as max_south, max(west) as max_west, max(midwest) as max_midwest, max(northeast) as max_northeast,
 min(south) as min_south, min(west) as min_west, min(midwest) as min_midwest, min(northeast) as min_northeast
	 FROM tutorial.housing_units_completed_us
	 where year = 1970 
	 group by 1;
	 
	 -- 1970 max (65.9,	31.2 34.6,	18.4) min (	39.6	22.9	17.5	10.8) respectively 