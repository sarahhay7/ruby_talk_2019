require 'csv'
require 'fileutils'

FileUtils.touch('new_csv.csv')

puts "csv = CSV.open('new_csv.csv')"

csv = CSV.open('new_csv.csv')

puts "csv.class: #{csv.class}"

puts "csv.read: #{csv.read}"

puts "csv.read.class: #{csv.read.class}"

FileUtils.rm('new_csv.csv')