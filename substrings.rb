# a #substrings that take string and an array of words (dictionary)
# create a new hash with default of 0
# convert the string into a string_array
# loop through the dictionary array and see if the string contains the word then increase the value of that word (key) by 1 in the hash
# return the hash

def substrings (string, array)
  words_founded = Hash.new(0)
  string_array = string.split(" ")
  array.each do |word|
    string_array.each do |string_word|
      if string_word.include?(word) || string_word.include?(word.capitalize())
        words_founded[word] += 1
      end
    end
  end
  return words_founded
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

