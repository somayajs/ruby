# create an empty string variable
# create an alphapte string variable which includes all letters in small and capital
# take the string that passed to the function and loop through it to get it's index in the alphapet variable and then get the shifted coressponding number using the index plus the key number

def caeser_cipher (string, key)
  new_string = ""
  alphapet = [*("a".."z")]
  string.each_char do |char|
    if alphapet.include?(char)
      new_string << alphapet[alphapet.index(char) + key]
    elsif alphapet.include?(char.downcase)
      new_string << alphapet[alphapet.index(char.downcase) + key].upcase
    else
      new_string << char
    end
  end
  new_string
end

puts caeser_cipher("This is a string", 1)
puts caeser_cipher("This Is A String", 2)
