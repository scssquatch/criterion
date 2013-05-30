class PagesController < ApplicationController
  def index
    @films = Film.all.order("created_at ASC")
    @film = Film.new
    redirect_to new_film_path unless current_film
  end
end
