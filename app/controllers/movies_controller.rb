class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params[:movie])
    @movie.save

    redirect_to movie_path(@movie)
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(params[:movie])

    redirect_to movie_path(@movie)
  end

  def search
    @movie = Movie.where(title: params[:query])
    authorize @movie
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movie_path
  end

  private

  def character_params
    params.require(:restaurant).permit(:image, :title, :date, :rating, :characters, :genre)
  end
end
