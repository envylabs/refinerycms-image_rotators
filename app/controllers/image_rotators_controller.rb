class ImageRotatorsController < ApplicationController

  def show
    @image_rotator = ImageRotator.find(params[:id])
  end

end
