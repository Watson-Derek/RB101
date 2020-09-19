flintstones = ["Fred", "Barney", "Wilma",  "Pebbles", "BamBam"]

flintstones_hash = {}
count = 0
loop do
  break if count == flintstones.size
  flintstones_hash[flintstones[count]] = count
  count += 1
end

p flintstones_hash
p flintstones

flintstones_hash = {}
p flintstones_hash

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash
p flintstones
