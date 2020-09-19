mailing = [ {name: "derek watson", age: 29 }, {name: "Tasha watson", age: 28} ]

mailing.each do |lead|
  names = lead[:name].split
  lead[:name] = names.map { |name| name.capitalize }.join(' ')
end

p mailing