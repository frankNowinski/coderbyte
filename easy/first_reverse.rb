# Have the function FirstReverse(str) take the str parameter being passed and 
# return the string in reversed order. (Without using the Ruby reverse method).

def first_reverse(str)
  len = str.size-1
  word = []

  while len >= 0 
    word << str[len]
    len -= 1
  end

  word.join('')
end

puts first_reverse("frank")