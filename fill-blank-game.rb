#!usr/bin/env ruby

# Fill in the blanks game (Mad Libs)
puts "-" * 15
puts "| Ruby Blanks |"
puts "-" * 15
puts "fill in the blanks"
sentence =  "I decieded to ____ a ____ party for my ____ ____"
puts sentence
blanks = ["verb", "adjactive", "adjactive", "noun"]
vowels = "aeiou"
blanks.each do |blank|
  article = vowels.include?(blank[0]) ?  "an" : "a"
  print "Give me #{article} #{blank}: "
  sentence.sub!("____", gets.chomp)
end
puts sentence
