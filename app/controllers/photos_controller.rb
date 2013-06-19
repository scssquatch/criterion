class PhotosController < ApplicationController

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      respond_to do |format|
        format.js
      end
    else
      head 400
    end
  end


  private

  def photo_params
    params.require(:photo).permit(:title, :photo)
  end
end
