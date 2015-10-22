# Have the function ArrayAdditionI(arr) take the array of numbers stored in arr and return the string true if any combination of numbers in the array can be added up to equal the largest number in the array, otherwise return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain all the same elements, and may contain negative numbers. 

def array_addition(arr)
  max = arr.sort!.pop
  array_addition = false 

  (1..arr.size).each do |n|
    arr.combination(n) do |comb|
      comb.inject(&:+) == max and array_addition = true
    end
  end
  array_addition
end

# Alternative solution

def array_addition(arr)
  max = arr.sort!.pop
  array_addition = false

  min = 0
  index = 0

  while index < arr.size-1
    sum = arr.reduce(:+)
    array_addition = true if sum == max
    while min < arr.size-1
      array_addition = true if sum - arr[min] == max
      min += 1
    end
    arr.shift
    min = 0
    index += 1
  end
   
  array_addition
end
   
arr = [2, 4, 8, 12]
puts array_addition(arr)
