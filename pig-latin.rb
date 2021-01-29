#!usr/bin/env ruby
def Pig_latin (word="")
  vowels = ['a', 'e', 'i', 'o', 'u']
  word.downcase!
  if vowels.include?(word[0])
    word << 'ay'
  else
    vowel_index = word.index(/[aeiou]/)
   word[vowel_index..] << word[0...vowel_index] << 'ay'
  end
end

p Pig_latin("Ruby")
