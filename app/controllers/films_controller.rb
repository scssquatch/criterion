class FilmsController < ApplicationController

  def activate
    current_film.update_attributes(active: false)

    @film = Film.find(params[:id])
    @film.update_attributes(active: true)
    @film.save!

    redirect_to root_url
  end

  def new
    @film = Film.new
    render "new.js.erb"
  end

  def create
    @film = Film.new(film_params)
    @film.active = false
    if @film.save
      redirect_to root_url, alert: "Video Uploaded"
    else
      redirect_to :back, alert: 'Video Upload Failed'
    end
  end


  private

  def film_params
    params.require(:film).permit(:title, :film, :preview)
  end
end
