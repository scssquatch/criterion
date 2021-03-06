class PagesController < ApplicationController
  def index
    @films = Film.all.order("created_at ASC")
    @film = Film.new
    @photos = Photo.all.order("created_at ASC")
    @photo = Photo.new
    redirect_to new_film_path unless Film.first
  end
end
