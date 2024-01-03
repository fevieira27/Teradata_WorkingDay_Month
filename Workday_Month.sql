-- SQL code that calculates the working day of the month based on any date used as a parameter (calendar_date). This does not account for holidays, though, as they are country-specific.

SELECT calendar_date
     , day_of_month
     	  - week_of_month * 2
        + (CASE WHEN td_day_of_week(calendar_date - day_of_month + 1) = 1 THEN 1 ELSE 0 END)
     	  - (CASE WHEN day_of_week=7 THEN 1 ELSE 0 END) as WorkdayNumber
FROM Sys_Calendar.Calendar
;
