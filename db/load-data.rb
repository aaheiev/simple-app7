#!/usr/bin/ruby

data_file_path = "./db/data/UA/UA.txt"

File.readlines(data_file_path).each do |line|
  fields = line.split(/\s+/)
  if fields.count > 9
    puts line
    puts "#{fields[0]} #{fields[1]} #{fields[-3]} #{fields[-2]} #{fields[-1]}>>> #{fields.count}"
  end
end
