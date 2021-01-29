#!usr/bin/env ruby

# shift the sting nultiple numbers
colors = "RRGGBBYYKK".split("")
lines = 25
1.upto(lines) do |char|
  first = colors.shift
  colors << first
  puts  colors.join
end
