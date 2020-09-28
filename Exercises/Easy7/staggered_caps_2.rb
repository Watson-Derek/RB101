def staggered_case(string)
  staggered_string = ''
  count = 0

  string.each_char do |character|
    if count.even?
      if character =~ /[A-Za-z]/ 
        staggered_string << character.upcase
        count += 1
      else
        staggered_string << character
      end
    else
      if character =~ /[A-Za-z]/ 
        staggered_string << character.downcase
        count += 1
      else
        staggered_string << character
      end
    end
  end

  staggered_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'