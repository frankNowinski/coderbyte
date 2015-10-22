# Have the function SecondGreatLow(arr) take the array of numbers stored in arr 
# and return the second lowest and second greatest numbers, respectively, 
# separated by a space. For example: if arr contains [7, 7, 12, 98, 106] the 
# output should be 12 98. The array will not be empty and will contain at least 2 
# numbers. It can get tricky if there's just two numbers! 

def second_great_low(arr)
  arr.uniq!.sort!
  puts "#{arr[1]} #{arr[-2]}"
end

second_great_low([78, 78, 90, 100, 1, 2])