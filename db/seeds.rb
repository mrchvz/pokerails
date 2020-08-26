require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'pokedex.csv'))
csv = CSV.parse(csv_text, :headers=> true, :encoding => 'ISO-8859-1')
csv.each do |row|
  pokemon = Pokemon.new
  pokemon.id = row['id']
  pokemon.name = row['name']
  pokemon.abilities = row['abilities']
  pokemon.save
end
puts csv_text
