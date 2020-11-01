BLOCK = { 'B' => 'O', 'X' => 'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A',
          'G' => 'T', 'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U',
          'V' => 'I', 'L' => 'Y', 'Z' => 'M' }

def block_word?(word)
  str = word.upcase
  BLOCK.each_pair do |key, value|
    if str.include?(key) || str.include?(value)
      return false if str.include?(key) && str.include?(value)
      return false if str.count(key) > 1 || str.count(value) > 1
    end
  end
  true
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true
