# Have the function LongestWord(sen) take the sen parameter being passed and return the largest word in the string. If there are two or more words that are the same length, return the first word from the string with that length. Ignore punctuation and assume sen will not be empty. 

def longest_word(str)
  words = str.scan(/\w+/)
  longest = ''

  words.each {|word| longest = word if word.length > longest.length}

  longest
end

puts longest_word("the longest word challenge")