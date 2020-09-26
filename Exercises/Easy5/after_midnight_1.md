write a method, that takes an integer as minutes, and returns the time of day in hh:mm
if integer input is positive, that is minutes after midnight
if integer input is negative, that is minutes before midnight

input - integer
output - time of day in string 'hh:mm'

examples:
  input(0) == "00:00"
  input(-3) == "23:57"
  input (35) == "00:35"

every 60 minutes converts to one hour,
  59 would be 00:59, 60 would be 01:00

hours would be integer / 60
minutes remaining would be integer - (60*hours)

ex 188 would be 188/60 = 3

if hours is less than ten, then convert to string as "0" + number, else just number

if minutes is less than ten, then convert to string as "0" + number, else just number

method algorithm:
for positive:
hours = input / 60
minutes = input - (hours * 60)
  
if the hours are greater than 24, then hours = hours - ((hours % 24) * hours)

