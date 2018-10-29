#!/usr/bin/env ruby
require 'net/http'

Process.fork do
  system('ruby ./platform.rb')
end

Process.fork do
  system('ruby ./evaluator.rb')
end

id = 0
loop do
  id += 1
  age = gets.chomp.to_i
  age = (45 * rand).floor + 1 if age.zero?
  Net::HTTP.post_form(
    URI('http://0.0.0.0:3001/evaluate'),
    id: id, age: age
  )
end
