DEGREE = "\xC2\xB0"

def dms(float)
  degrees = float.to_i

  if degrees == 0
    minutes_float = float
  else
    minutes_float = float % degrees
    minutes = minutes_float * 60
  end

  if minutes.to_i == 0
    seconds_float = minutes
  else
    seconds_float = minutes % minutes.to_i
    seconds = seconds_float * 60
  end

  minutes = minutes.to_i
  seconds = seconds.to_i
  
  if minutes < 10
    minutes = '0' + minutes.to_s
  else
    minutes = minutes.to_s
  end

  if seconds < 10
    seconds = '0' + seconds.to_s
  else
    seconds = seconds.to_s
  end

  output = "#{degrees}#{DEGREE}#{minutes}'#{seconds}\""
  output
end

puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
