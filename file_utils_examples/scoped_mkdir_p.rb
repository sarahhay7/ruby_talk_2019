require "fileutils"

include FileUtils

rm_rf('television')
mkdir('television')

cd 'television' do |dir|
  # loop through array to create seasons of folders
  ['saturday_night_live', 'monty_python'].each do |folder|
    seasons = []

    Array(1..4).each do |number|
      seasons << "#{folder}/season_#{number}"
    end

    # creates directory and all parent directories
    mkdir_p(seasons)

    seasons.each do |season|
      touch("#{season}/Episode_1.txt")
    end
  end
end