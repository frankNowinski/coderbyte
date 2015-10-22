# Have the function MeanMode(arr) take the array of numbers stored in arr and 
# return 1 if the mode equals the mean, 0 if they don't equal each other (ie. [5, 
# 3, 3, 3, 1] should return 1 because the mode (3) equals the mean (3)). The 
# array will not be empty, will only contain positive integers, and will not 
# contain more than one mode.

def mean_mode(arr)
  mean = arr.inject(:+)/arr.size.to_f

  mode = 0
  counter = 0
 
  arr.each do |n|
    if arr.count(n) > counter
      mode = n
      counter = arr.count(n)
    end
  end
  return mode == mean ? 1 : 0
end

puts mean_mode([5, 3, 3, 3, 1])



