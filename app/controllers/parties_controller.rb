class PartiesController < ApplicationController

  def index
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new(party_params)
    if @party.save
      redirect_to root_path, notice: 'パーティを作成しました'
    else
      render :new
    end
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
    params.require(:party).permit(:party_id, :party_name)
  end

end
