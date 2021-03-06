class PartiesController < ApplicationController

  def index
  end

  def new
    # @gender = [
    #   {id: "", name: ""},
    #   {id: 1, name: "♂"},
    #   {id: 2, name: "♀"},
    #   {id: 3, name: "不明"}
    # ]
    @party = Party.new
  end

  def create
    @party = Party.new(party_params)
    @party.pokemons.build
    @party.save
    redirect_to root_path, notice: 'パーティを作成しました'
  end

  def show
    @party = Party.find(params[:id])
  end

  def edit
    @party = Party.find(params[:id])
  end

  def update
    @party = Party.find(params[:id])
  end

  def destroy
    @party = Party.find(params[:id])
  end

  private

  def party_params
    params.require(:party).permit(
      :party_name,
      pokemons_attributes:[
        :name, :nickname, :gender, :ability, :nature, :item, :move1, :move2, :move3, :move4,
        :cs_hp, :cs_attack, :cs_defense, :cs_special_attack, :cs_special_defense, :cs_speed,
        :bs_hp, :bs_attack, :bs_defense, :bs_special_attack, :bs_special_defense, :bs_speed,
        :ev_hp, :ev_attack, :ev_defense, :ev_special_attack, :ev_special_defense, :ev_speed
      ]
    )
  end

end
