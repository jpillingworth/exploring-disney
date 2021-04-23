class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(params[:character])
    @character.save

    redirect_to character_path(@character)
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update(params[:character])

    redirect_to character_path(@character)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to characters_path
  end

  private

  def character_params
    params.require(:restaurant).permit(:image, :name, :age, :weight, :history, :movie)
  end
end
