# Using the Ruby language, have the function CaesarCipher(str,num) take the 
# str parameter and perform a Caesar Cipher shift on it using the num parameter 
# as the shifting number. A Caesar Cipher works by shifting each letter in the 
# string N places down in the alphabet (in this case N will be num). 
# Punctuation, spaces, and capitalization should remain intact. For example if 
# the string is "Caesar Cipher" and num is 2 the output should be "Ecguct Ekrjgt". 

def caesar_cipher(str, num)
  alphabet = ("a".."z").to_a + ("A".."Z").to_a

  cipher = []
  str.chars do |c|
    if alphabet.include?(c)
      num.times do
        c = c.next
      end
      cipher << c
    else 
      cipher << c 
    end
  end
  return cipher.join('')
end

puts caesar_cipher("Caesar Cipher", 2)