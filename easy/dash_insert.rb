# Have the function DashInsert(str) insert dashes ('-') between each two odd 
# numbers in str. For example: if str is 454793 the output should be 4547-9-3. 
# Don't count zero as an odd number. 

def dash_insert(str)
  arr = str.to_s
  index = arr.size

  while index > 0
    arr.insert(index, "-") if arr[index].to_i.odd? && arr[index-1].to_i.odd?
    index -=1
  end
  arr
end

puts dash_insert(454793)











