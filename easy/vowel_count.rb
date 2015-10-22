# Have the function VowelCount(str) take the str string parameter being passed and return the number of vowels the string contains (ie. "All cows eat grass" would return 5). Do not count y as a vowel for this challenge. 

def vowel_count(str)
  str.scan(/[aeiouAEIOU]/).count
end

puts vowel_count("All cows eat grass")