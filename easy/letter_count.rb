# Have the function LetterCountI(str) take the str parameter being passed and return the first word with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. If there are no words with repeating letters return -1. Words will be separated by spaces. 

def letter_count(str)
  arr = str.downcase.split
  most_letters = ''
  letter_count = 1

  arr.each do |word|
    word.chars do |c|
      if word.count(c) > letter_count
        most_letters = word
        letter_count = word.count(c)
      end
    end
  end

  return "-1" if letter_count == 1
  most_letters
end

puts letter_count("Today, is the greatest day ever!")
