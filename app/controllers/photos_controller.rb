class PhotosController < ApplicationController

  def create
    @photo = Photo.new(photo_params)
    @photo.save
    redirect_to root_url
  end


  private

  def photo_params
    params.require(:photo).permit(:title, :photo)
  end
end
