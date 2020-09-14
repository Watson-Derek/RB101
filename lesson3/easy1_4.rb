numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
# delete_at deletes the value at the index given, in this case, will delete the '2'
# new array will be [1, 3, 4, 5]
p numbers

numbers = [1, 2, 3, 4, 5]

numbers.delete(1)
# delete deltes all matching values of the value given
# new array will be [2, 3, 4, 5]
p numbers
