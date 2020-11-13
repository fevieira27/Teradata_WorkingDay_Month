SELECT calendar_date
      ,day_of_month
     	- week_of_month * 2
     	+ (CASE WHEN td_day_of_week(calendar_date - EXTRACT(DAY FROM calendar_date) + 1) = 1	THEN 1 ELSE 0 END)
     	- (CASE WHEN day_of_week=7 THEN 1 ELSE 0 END) as WorkdayNumber     FROM Sys_Calendar.Calendar	
