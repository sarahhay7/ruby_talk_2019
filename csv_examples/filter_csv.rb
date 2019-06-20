require 'csv'
require 'pp'

headers = ['Artist', 'Song']

CSV.open('songs.csv', 'w+', write_headers: true, headers: headers) do |csv|
  csv << ['Bob Dylan', 'Like a Rolling Stone']
  csv << ['Led Zeppelin', 'Stairway To Heaven']
  csv << ['Elton John', 'This Song Has No Title']
  csv << ['Led Zeppelin', 'Gallow\'s Pole']
  csv << ['Led Zeppelin', 'When the Levee Breaks']
end

puts "Full Songs:"
pp CSV.read('songs.csv')
puts "\n"

song_file = File.new('songs.csv', 'r')
zeppelin_file = File.new('zeppelin.csv', 'w')

CSV.filter(song_file, zeppelin_file, headers: true, header_converters: :symbol) do |row|
  if row[:artist] != 'Led Zeppelin'
    row.delete(:artist)
    row.delete(:song)
  end
end

zeppelin_file.close

puts "Zeppelin Songs:"
pp CSV.read('zeppelin.csv', skip_blanks: true)
