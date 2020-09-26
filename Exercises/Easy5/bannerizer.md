method that takes one line of text, and prints it within a box

input - string, short enough to fit in terminal window
ouput - printed string, within a box, centered on third line

examples:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

algorithm:

FF
--

find length of string, that will serve as the border size
default box is 4 characters wide, '+--+'
number of dashes is 2 plus the length of the string
ie hello is 5 characters
number of dashes will be 7
+-------+
| hello |

box_width will be an integer to create the 5 lines

lines 1 and 5 will be created by using box_width.times add '-' to an empty string, then use << and prepend to add a + to each side

lines 2 and 4 will be created by using box_width.times, adding a ' ' to an empty string, then use << and prepend to add a | to each side

middle line will just be "| #{string} |"