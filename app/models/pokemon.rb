class Pokemon < ApplicationRecord
  require 'csv'
  def self.import(file)
    CSV.foreach('pokedex.csv', headers: true) do |row|
      Pokemon.create! row.to_hash
    end
  end
end
