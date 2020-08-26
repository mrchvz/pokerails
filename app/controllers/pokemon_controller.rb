class PokemonController < ApplicationController
  def index
    @pokemons = Pokemon.all
    render(json: @pokemons)
  end

  def show
    @pokemon = Pokemon.find_by(name: params.fetch(:name))
    render(json: @pokemon)
  end
end
