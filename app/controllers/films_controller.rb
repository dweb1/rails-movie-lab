class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def show
    @film = Film.find(params[:id])
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.create(film_params)
    redirect_to film_path(@film)
  end

  private
  def film_params
    params.require(:film).permit(:title, :year, :synopsis, :picture, :genre)
  end
end
