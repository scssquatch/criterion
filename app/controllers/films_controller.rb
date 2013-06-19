class FilmsController < ApplicationController
  skip_before_filter protect_from_forgery only: [:create]
  respond_to :html, :js

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
      @new_film = @film
      respond_to do |format|
        format.js
        format.html { redirect_to root_url }
      end
    else
      head 400
    end
  end


  private

  def film_params
    params.require(:film).permit(:title, :film, :preview)
  end
end
