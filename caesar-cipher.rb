# create an empty string variable
# create an alphapte string variable which includes all letters in small and capital
# take the string that passed to the function and loop through it to get it's index in the alphapet variable and then get the shifted coressponding number using the index plus the key number

def caeser_cipher (string, key)
  new_string = ""
  alphapet = "abcdefghijklmnopqrstuvwxyz"
  for i in 0...string.length
    if alphapet.include?(string[i])
      new_string << alphapet[alphapet.index(string[i]) + key]
    elsif alphapet.include?(string[i].downcase)
      new_string << alphapet[alphapet.index(string[i].downcase) + key].upcase
    else
      new_string << string[i]
    end
  end
  new_string
end

puts caeser_cipher("This is a string", 1)
puts caeser_cipher("This Is A String", 2)
