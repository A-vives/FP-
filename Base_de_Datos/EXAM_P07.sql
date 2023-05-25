SELECT 
  name,
  surname, 
  start_date, 
  end_date,
  EXTRACT(DAY FROM end_date-start_date) + 91 diff
FROM 
  employees
WHERE 
  end_date IS NOT NULL
  order by diff desc;