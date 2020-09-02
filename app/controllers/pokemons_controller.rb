class PokemonsController < ApplicationController

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:pokemon_id, :name, :nickname, :gender, :ability, :nature, :item, :move1, :move2, :move3, :move4)
  end

end