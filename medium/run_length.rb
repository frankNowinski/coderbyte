# Have the function RunLength(str) take the str parameter being passed and return 
# a compressed version of the string using the Run-length encoding algorithm. 
# This algorithm works by taking the occurrence of each repeating character and 
# outputting that number along with a single character of the repeating sequence. 
# For example: "wwwggopp" would return 3w2g1o2p. The string will not contain any 
# numbers, punctuation, or symbols.

def run_length(str)
  arr = []
  counter = 1
  str = str.split('')

  str.each_with_index do |char, index|
    if char == str[index+1]
      counter += 1
    else
      arr << counter
      arr << char
      counter = 1
    end
  end
  arr.join('')
end

puts run_length("wwwggopp")