class PartiesController < ApplicationController

  def index
  end

  def new
    @party = Party.new
  end

  def create
  end

  def edit
    @party = Party.find(params[:id])
  end

  def update
  end

  def destroy
  end

end
