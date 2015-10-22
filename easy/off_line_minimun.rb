# Have the function OffLineMinimum(strArr) take the strArr parameter being passed # which will be an array of integers ranging from 1...n and the letter "E" and 
# return the correct subset based on the following rules. The input will be in 
# the following format: ["I","I","E","I",...,"E",...,"I"] where the I's stand for 
# integers and the E means take out the smallest integer currently in the whole 
# set. When finished, your program should return that new set with integers 
# separated by commas. For example: if strArr is 
# ["5","4","6","E","1","7","E","E","3","2"] then your program should return 4,1,5. 

def off_line_minimun(arr)
  temp = []
  final = []

  arr.each do |c|
    c != 'E' ? temp << c : final << temp.delete(temp.min)
  end
  return final.join(",")
end

puts off_line_minimun(["5","4","6","E","1","7","E","E","3","2"])