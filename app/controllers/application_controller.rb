class ApplicationController < ActionController::Base
  require 'csv'
  require 'json'
  
  $pokedex = []
  CSV.foreach('pokedex.csv', headers: true) do |row|
    $pokedex << row.to_hash
  end
end
