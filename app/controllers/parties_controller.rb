class PartiesController < ApplicationController

  def index
  end

  def new
    @party = Party.new
    @party.build_pokemon
  end

  def create
    @party = Party.new(party_params)
    if @party.save
      redirect_to root_path, notice: 'パーティを作成しました'
    else
      render :new
    end
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
      :party_id,
      :party_name,
      pokemons_attributes:[:pokemon_id, :name, :nickname, :gender, :ability, :nature, :item, :move1, :move2, :move3, :move4]
    )
  end

end
