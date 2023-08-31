require 'bundler/setup'
require 'httparty'
require 'colorize'
require 'json'

response = HTTParty.get('https://api.chucknorris.io/jokes/random')
joke = JSON.parse(response.body)['value']

puts "Aquí hay un chiste sore Chuck Norris:".bold
puts joke.green

