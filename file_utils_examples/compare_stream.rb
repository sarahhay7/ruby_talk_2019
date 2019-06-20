require 'open-uri'
require 'fileutils'

first = 'https://media.giphy.com/media/Cp9cUJc4hgNvG/giphy.gif'
second = 'https://media.giphy.com/media/dcubXtnbck0RG/giphy.gif'

gif_1 = open(first)
gif_2 = open(second)
gif_3 = open(first)

one_and_two_are_the_same = FileUtils.compare_stream(gif_1, gif_2)
two_and_three_are_the_same = FileUtils.compare_stream(gif_2, gif_3)
one_and_three_are_the_same = FileUtils.compare_stream(gif_1, gif_3)

puts "Stream: 1 == 2" if one_and_two_are_the_same
puts "Stream: 2 == 3" if two_and_three_are_the_same
puts "Stream: 1 == 3" if one_and_three_are_the_same

one_and_two_are_the_same_file = FileUtils.compare_file(gif_1, gif_2)
two_and_three_are_the_same_file = FileUtils.compare_file(gif_2, gif_3)
one_and_three_are_the_same_file = FileUtils.compare_file(gif_1, gif_3)

puts "File: 1 == 2" if one_and_two_are_the_same_file
puts "File: 2 == 3" if two_and_three_are_the_same_file
puts "File: 1 == 3" if one_and_three_are_the_same_file