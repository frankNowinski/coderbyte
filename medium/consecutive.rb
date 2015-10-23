# Have the function Consecutive(arr) take the array of integers stored in 
# arr and return the minimum number of integers needed to make the contents 
# of arr consecutive from the lowest number to the highest number. For example: 
# If arr contains [4, 8, 6] then the output should be 2 because two numbers need 
# to be added to the array (5 and 7) to make it a consecutive array of numbers from 
# 4 to 8. Negative numbers may be entered as parameters and no array will have less 
# than 2 elements. 

def consecutive(arr)
  arr = arr.sort {|a,b| b<=>a}
  sum = 0
  index = 0

  while index < arr.size-1
    sum += arr[index] - arr[index+1]
    index += 1
  end
  return sum -= arr.size-1
end

puts consecutive([5,10,15])

# Alternative solution

def consecutive(arr)
  return arr.max - arr.min - arr.count + 1
end
