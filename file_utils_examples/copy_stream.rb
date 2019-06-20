require 'open-uri'
require 'fileutils'

url = 'http://i.imgur.com/D89uy1C.gif'

download = open(url)
bytes_expected = download.meta['content-length']
bytes_copied = FileUtils.copy_stream(download, 'image.png').to_s

puts "Bytes Expected: #{bytes_expected}"
puts "Bytes Copied: #{bytes_copied}"

if bytes_expected != bytes_copied
  raise "Expected #{bytes_expected} bytes but got #{bytes_copied} bytes."
end