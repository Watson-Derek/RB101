You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Method that takes an argment, the number of switches (n), and returns an array to identify which lights are on after n repetitions

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].


input - number of lights / repetitions
output - an array of just the switch (light) numbers where the light is on

lights start at number 1 to n

round 1 turns every light on, so can start with an array of all numbers as 'on' or true

each round toggles switches based on the round number. the first switch is the round number, each next switch is the current switch plus round number

round 1 - 1, 2 (1+1), 3 (2+1), 4 (3+1) etc
round 2 - 2, 4 (2+2), 6 (4+2) etc
round 3 - 3, 6 (3+3), 9 (6+3) etc
round 4 - 4, 8 (4+4), 12 (8+4) etc

Data structure:
Nested array of the light number, and on/off (true/false)

Algorithm:
initalize a nested array, each sub array is a number from 1 to n, and the value 'off'

set round number = 1

iterate, 1 up to n, using the number as the pass to swtich the second value 

use select to return an array of the light switches with 'on' as the second value
