#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

 # > caesar_cipher("What a string!", 5)
  #=> "Bmfy f xywnsl!"
  def caesar_cipher(string, number)
    


    ciphered_string = ""
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    correct_string = string.downcase
    correct_string.each_char.with_index do |letter, index|
        if alphabet.include?(letter)
      
         old_index = alphabet.index(letter)
         new_index = (old_index + number) % 26
         new_char = alphabet[new_index]
        ciphered_string += new_char
        
      else ciphered_string += letter
      end
    end
    return ciphered_string
    end
    
    puts "welcome to the Caesar Cypher!"
    puts "Give me a word or sentence"
    string = gets.chomp
    puts "now give me a number"
    number = gets.chomp.to_i
    
    puts caesar_cipher(string, number)