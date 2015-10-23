# Have the function SimpleMode(arr) take the array of numbers stored in 
# arr and return the number that appears most frequently (the mode). For example:
# if arr contains [10, 4, 5, 2, 4] the output should be 4. If there is more 
# than one mode return the one that appeared in the array first (ie. 
# [5, 10, 10, 6, 5] should return 5 because it appeared first). If there is no 
# mode return -1. The array will not be empty. 

def simple_mode(arr)
  mode = arr.max_by{|n| arr.count(n)}
  return -1 if arr.count(mode) == 1 
  mode
end

puts simple_mode([5, 10, 10, 6, 5])