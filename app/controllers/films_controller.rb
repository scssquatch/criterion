class FilmsController < ApplicationController

  def activate
    @film = Film.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)
    @film.active = false
    if @film.save
      redirect_to root_url
    else
      redirect_to :back
    end
  end


  private

  def film_params
    params.require(:film).permit(:title, :film, :preview)
  end
end
