method that implements a stack and register based programming language

commands are pushed in within a string

register is always one value

n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value

data structure - array for the stack, and a value for the register

Examples:

Based on examples, just stating a number is the 'n' command. In this second example, 5 is the first 'command', 5 is placed in register. the PUSH command then sends it into the stack. then 3 is the new register value, which is then MULT by 5, which is popped from the top of the array and stored in the register as 15, then printed

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

Algorithm:
Initialize regiester as 0 and an empty array for the stack

split the string input into an array of individual commands

iterate through the input array following each command

