# Have the function WordCount(str) take the str string parameter being passed and
# return the number of words the string contains (ie. "Never eat shredded wheat"
# would return 4). Words will be separated by single spaces. 

def word_count(str)
  str.split(" ").count
end

puts word_count("Never eat shredded wheat")