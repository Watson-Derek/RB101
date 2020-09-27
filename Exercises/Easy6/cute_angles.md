method that takes a floating point number (float), which represents an angle from 0 to 360 degrees, and returns a new string that represents the angle in degrees, minutes, and seconds.
degree symbol is a circle using the string "\xC2\xB0"
a degree has 60 minutes, and a minute has 60 seconds

input - float
output - string of degrees, minutes, seconds
rules - minutes and seconds should always be two characters, 00, 05, 11, for example

examples:
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

algorithm:
degrees equals the float input converted to an integer
minutes equals the remainder (%) of the float divided by the integer of the float (degrees)
seconds equals remainder of minutes divided by the integer of minutes, multiplied by 60
minutes and seconds need to be converted to integers also

convert all three variables to strings
format the minutes and seconds, if less than 10, then the string conversion is 0 + the integer

