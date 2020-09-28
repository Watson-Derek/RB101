def staggered_case(string)
  staggered_string = ''
  count = 0

  string.each_char do |character|
    if count.even?
      if character =~ /[A-Za-z]/ 
        staggered_string << character.upcase
      else
        staggered_string << character
      end
    else
      if character =~ /[A-Za-z]/ 
        staggered_string << character.downcase
      else
        staggered_string << character
      end
    end

    count += 1
  end

  staggered_string
end



p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'