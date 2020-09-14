advice = 'Few things in life are as important as house training your pet dinosaur.'

new_advice = advice.slice!('Few things in life are as important as ')

p new_advice
p advice

# better way from solution (less typing)

advice = 'Few things in life are as important as house training your pet dinosaur.'

p advice.slice!(0, advice.index('house'))
p advice