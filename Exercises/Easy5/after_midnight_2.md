return minutes after and before midnight, in two different methods

input - string in '00:00' format
output - integer from 0..1439

algorithm:
  Constant variables = 
    MINUTES_HOUR = 60
    MINUTES_DAY = 1440
  
  split the string by the : into an array containing two values
  the first value will be multiplied by MINUTES_HOUR to get the minutes in the total hours
  the second value will be added to the first to get the total minutes

  for before midnight, run after midnight, and subtract that value from MINUTES_DAY




