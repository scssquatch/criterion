class PagesController < ApplicationController
  def index
    @films = Film.all.order("created_at ASC")
    @film = Film.new
  end
end
