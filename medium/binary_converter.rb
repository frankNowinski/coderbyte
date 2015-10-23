# Using the Ruby language, have the function BinaryConverter(str) return the 
# decimal form of the binary value. For example: if 101 is passed return 5, 
# or if 1000 is passed return 8. 

def binary_converter(str)
  str = str.reverse.split('')
  i = 0
  sum = 0

  while i < str.size
    sum = sum + (2**i) if str[i] == '1'
    i += 1
  end
  sum
end

puts binary_converter("100101")