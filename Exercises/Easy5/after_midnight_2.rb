MINUTES_HOUR = 60
MINUTES_DAY = 1440

def after_midnight(string)
  time_arr = string.split(':')
  total_minutes = (time_arr[0].to_i * MINUTES_HOUR) + time_arr[1].to_i
  total_minutes % MINUTES_DAY
end

def before_midnight(string)
  after_total = after_midnight(string)
  before_total = MINUTES_DAY - after_total
  before_total % MINUTES_DAY
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')
