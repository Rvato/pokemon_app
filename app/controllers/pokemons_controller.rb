class PokemonsController < ApplicationController

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
  end

  private

  def pokemon_params
    params.permit(
      :pokemon_id,
      :name,
      :nickname,
      :gender,
      :ability,
      :nature,
      :item,
      :move1,
      :move2,
      :move3,
      :move4,
      current_status_attributes:[:cs_hp, :cs_attack, :cs_defense, :cs_special_attack, :cs_special_defense, :cs_speed],
      base_status_attributes:   [:bs_hp, :bs_attack, :bs_defense, :bs_special_attack, :bs_special_defense, :bs_speed],
      effort_value_attributes:  [:ev_hp, :ev_attack, :ev_defense, :ev_special_attack, :ev_special_defense, :ev_speed]
    )
  end

end