require 'csv'

new_csv = CSV.generate do |csv|
  csv << CSV.parse_line("bob dylan, like a rolling stone")
  csv << CSV.parse_line('led zeppelin, gallow\'s pole')
  csv << ['deep purple', 'space truckin']
  csv << ['elton john', 'saturday night\'s alright for fighting']
end

puts new_csv
