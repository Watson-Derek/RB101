def foo(param = 'no')
  'yes'
end

def bar(param = 'no')
  param == 'no' ? 'yes' : 'no'
end

p bar(foo)

#will return 'no'
# the result of foo is 'yes', since that is the return value
# 'yes' is passed into method bar, 'yes' does not equal 'no', so 'no' is the output
