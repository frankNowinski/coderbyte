# Have the function NumberEncoding(str) take the str parameter and encode the
# message according to the following rule: encode every letter into its corresponding
# numbered position in the alphabet. Symbols and spaces will also be used in the input.
# For example: if str is "af5c a#!" then your program should return 1653 1#!. 

def number_encoding(str)
  str.downcase!
  arr = []

  str.chars do |c|
    c =~ /[a-z]/ ? arr << c.ord - 97 + 1 : arr << c
  end
  arr.join('')
end

puts number_encoding("af5c a#!")