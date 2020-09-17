greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << 'there'

puts informal_greeting
puts greetings

# informal greeting is assigned to an object for a, and the greetings hash references that object
# the  << 'there' mutates that object that both reference, so they both now have
# 'hello there'