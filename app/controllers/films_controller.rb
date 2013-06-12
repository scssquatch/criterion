class FilmsController < ApplicationController
  skip_before_filter protect_from_forgery only: [:create]

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
      respond_to do |format|
        format.js
      end
    else
      respond_to do |format|
        format.js { render "failed" }
      end
    end
  end


  private

  def film_params
    params.require(:film).permit(:title, :film, :preview)
  end
end
