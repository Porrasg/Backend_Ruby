require 'colorize'

puts "this is blue".colorize(:blue)
puts "this is light blue".colorize(:light_blue)
puts "this is also blue".colorize(:color => :blue)

puts "this is red".colorize(:red)
puts "this is yellow".colorize(:yellow)