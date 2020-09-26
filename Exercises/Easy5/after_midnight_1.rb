def time_of_day(input)
  hours = input / 60
  minutes = input - (hours * 60)

  if input >= 0

    if hours > 24
      hours = (hours - ((hours / 24) * 24))
    end

  else

    if hours < -24
      hours *= -1
      hours = (hours - ((hours / 24) * 24))
      hours *= -1
    end

    hours += 24

  end

  if hours < 10
    hours = "0" + hours.to_s
  else
    hours = hours.to_s
  end

  if minutes < 10
    minutes = "0" + minutes.to_s
  else
    minutes = minutes.to_s
  end

  p "#{hours}:#{minutes}"
end

time_of_day(0)
time_of_day(-3)
time_of_day(35)
time_of_day(-1437)
time_of_day(3000)
time_of_day(800)
time_of_day(-4231)
