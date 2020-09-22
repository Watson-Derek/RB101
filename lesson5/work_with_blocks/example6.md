[{a: 'ant', b: 'elephant' }, {c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end


Line 1 - select method call on an array of nested hashes. Will return an array of all returned values from within the block. 
Line 1-5 - the select block execution, any values from within the block that match the selection will be returned
Line 2 - all method call on the passed in sub-hash. This method will return a boolean either true or false.
Line 2-4 all block exection. In this case, each key-value pair from each sub-hash is passed in to be evaluated. Each key-value pair in order will be evaluated to meet the condition. As soon as one pair fails the criteria, the block ends return a boolean false value.
Line 3 - comparison. This checks whether the first character of the value passed into the block (value[0]) is equal to the key (converted to string). So first the first character of the string value is found, in the first case 'a' for the value 'ant', then the key is converted to a string, in the first case the :a symbol is converted to 'a'. These two are compared and if equal, the comparison returns true, if not, it returns false.

In this example, the first sub-hash will fail the .all? method, as the second key value pair will compare 'e' from 'elephant' to 'b' from :b. Therefore the first sub-hash returns false, and is not selected by the select method. The second sub-hash passes the .all? method, as 'c' from 'cat' is compared to 'c' from :c. This will return true to the select method, and that sub-hash will be returned to the final array returned from the select method, resulting in a final return value of [{ :c => 'cat' }]

From solution question - if .all? was changed to .any?, would that have an effect? Yes, the return value from select would be the original array, as .any? returns true if any of the arguments passed to it pass the comparison (in this case). The first sub-hash would also pass, as 'a' from 'ant' would equal 'a' from :a