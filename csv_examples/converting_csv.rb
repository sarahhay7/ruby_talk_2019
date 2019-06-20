require 'csv'

my_array = ["Queen", "Queen II", "March of the Black Queen", 1974]
converted_to_csv = CSV.generate_line(my_array, row_sep: nil)

puts "My Array: #{my_array}"
puts "Converted: #{converted_to_csv}"
puts "\r\n"


my_string = "Pink Floyd,Dark Side of the Moon,Brain Damage,1973"
converted_from_string = CSV.parse_line(my_string)

puts "My String: #{my_string}"
puts "Converted: #{converted_from_string}"
puts "\r\n"