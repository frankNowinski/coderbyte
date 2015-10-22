# Have the function ArithGeo(arr) take the array of numbers stored in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference between each of the numbers is consistent, where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements. 

def arith_geo(arr)
  len = arr.size
  return "-1" if len < 2

  arithmetic = true
  geometric = true

  arith_constant = arr[1] - arr[0]
  i = 2

  while arithmetic && i < len
    arithmetic = arr[i] - arr[i-1] == arith_constant
    i += 1
  end

  geo_constant = arr[1] / arr[0]
  j = 2

  while geometric && j < len
    geometric = arr[j] / arr[j-1] == geo_constant
    j += 1
  end

  if arithmetic
    return "Arithmetic"
  elsif geometric
    return "Geometric"
  else 
    return "-1"
  end
end

puts arith_geo([2, 6, 18, 54])
# puts arith_geo([2, 6, 10, 14])



