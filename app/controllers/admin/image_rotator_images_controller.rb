class Admin::ImageRotatorImagesController < Admin::BaseController

  before_filter :find_image_rotator

  crudify :image_rotator_image

  def find_image_rotator
    @image_rotator = ImageRotator.find(params[:image_rotator_id])
  end
  private :find_image_rotator

end
