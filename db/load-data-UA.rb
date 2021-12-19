#!/usr/bin/ruby

require 'json'

data_file_path = "./db/data/UA/UA.txt"
lines = 0
File.readlines(data_file_path).each do |line|

  fields = line.split(/\s+/)
  city  = {}
  city[:country_code] = fields[0].strip
  city[:postal_code]  = fields[1].strip
  city[:place_name]   = fields[2..-7].join(' ')
  city[:latitude]     = fields[-3].strip
  city[:longitude]    = fields[-2].strip
  city[:accuracy]     = fields[-1].strip
  city[:admin_name1]  = fields[-6].strip
  city[:admin_code1]  = fields[-5].strip
  city[:admin_name2]  = fields[-4].strip
  puts city.to_json
  lines += 1
end

puts "total lines; #{lines}"
