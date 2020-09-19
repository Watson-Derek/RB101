Problem:

Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second row two integers, the third row three integers, and so on. Given an integer representing the number of a particular row, return an integer represennting the sum of all the integers in that row. 

What we know:

- Sequence of integers
- Sequence begins with 2
- Integers are consecutive (even only)
- Sequence is grouped into rows
- Each row is incrementally larger: 1 - 1, 2 - 2, 3 - 3, ...
- Row 'number' equals the number of elements in that row
  - Row 1 has 1 element, row 2 has 2 elements, ...
- Input: a single integer
  - this integer identifies a 'row', which is a subset of a sequence of integers
 Output: a single integer
  - integer is the sum of the integers in the row identified by the input integer

- Sequence:
2, 4, 6, 8, 10, 12, 14, 16, 18, ...

2
4, 6
8, 10, 12
14, 16, 18, 20
...

- How do we create the structure?

Examples and Test Cases:

row number: 1 --> sum of integers in row: 2
row number: 2 --> sum of integers in row: 10
row number: 4 --> sum of integers in row: 68

- this confirms the structure assumed when describing the problem
  - 2 --> 2
  - 4, 6 --> 10
  - 14, 16, 18, 20 --> 68

Data Structures

    - Help reason with data logically
    - Help interact with dat aat implementation level
    - Thinking in terms of data structures is part of problem sovling process
    - Data structures are closely linked to alogrithm
      - An algorithim is a set of steps from the input to the output
        Involves structuring data in a certain way

- Overall structure represents a sequence as a whole
- Individual rows within the overall structure
- Individual rows in a set order in context of sequence
- Individual rows contain integers
- Can assume that integers are in a set order in the context of the sequence

- Nested array structure seems like the logical structure

[
    [2],
    [4, 6],
    [8, 10, 12],
    [14, 16, 18, 20],
    ...
]

Calculating the start integer:
Rule: First integer of row == Last integer of preceding row + 2
Algorithm
  - Get the preceding row
  - Get last integer of that row
  - Add 2 to the integer

Algorithms

    - A logical sequence of steps to accomplish a task or objective
      - Closely linked to data structures
      - Series of steps to structure data to produce the required output
    - Stay abstract and high-level
      - Aviod implementation detail
      - Don't worry too much about effeciency at this stage

1. Create an empty 'rows' array to contain all of the rows
2. Create a 'row' array and add it to the overall 'rows' array
3. Repeat step 2 until all the necessary rows have been created
  - All rows have been created when the length of the 'rows' array is equal to the input integer
4. Sum the final row
5. Return the sum of the final row

  *Problem: Create a row (step 2)

  Rules:
  - Row is an array
  - Array contains integers
  - Integers are consecutive even numbers
  - Integers in each row are part of an overall larger sequence
  - Rows are of different lengths

  - Input: the information needed to create the output
    - The starting integer
    - The length of the row
  - Output: the row itself: ex [8, 10 ,12]

  Examples:
  start: 2, length: 1 -- [2]
  start: 4, length: 2 -- [4, 6]
  start: 8, length: 3 -- [8, 10, 12]

  Data Structures:
  - An array of integers

  Algorithm:
  1. Create an empty 'row' array to contain the integers
  2. ADd the starting integer
  3. Increment the starting integer by 2 to get the next integer in the sequence
  4. Repeate steps 2 and 3 until the array has reached the correct length
  5. Return the array

Implementing a solution in Code

    - Translating the solution algorithm to code
    - Think about the algorithm in the context of the programming language
      - Language features and constraints
      - Characteristics of data structures
      - Built in functions and methods
      - Syntax and coding patterns
    - Create test cases
    - Code with intent


Final Thoughts:
  - PEDAC is not a completely linear process
  - prepare to move forward and backward between the steps
  - switch from implementation mode back to abstract problem solving when necessary
    - can even use comments within method to do abstract solving
  - don't try to problem solve at the code level