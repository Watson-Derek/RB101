def lights(rounds)
  light_array = []
  1.upto(rounds) { |round| light_array << [round, -1] }

  1.upto(rounds) do |round|
    current_light = round
    light_array.map do |sub_array|
      if sub_array[0] == current_light
        sub_array[1] *= -1
        current_light += round
      end
    end
  end
  lights_on_array = []

  light_array.select do |light|
    lights_on_array << light[0] if light[1] == 1
  end
  lights_on_array
end

p lights(5)
p lights(10)
