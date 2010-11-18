class Admin::ImageRotatorImagesController < Admin::BaseController

  before_filter :find_image_rotator

  crudify :image_rotator_image,
    :title_attribute => 'image.title',
    :sortable => false,
    :redirect_to_url => 'admin_image_rotators_path'

  def update_positions
    0.upto((newlist ||= params[:ul]).length - 1) do |index|
      hash = newlist[index.to_s]
      moved_item_id = hash['id'].split(/image_rotator_image_/)
      image = ImageRotatorImage.find_by_id(moved_item_id)
      image.insert_at(index + 1)
    end

    render :nothing => true
  end

  def find_image_rotator
    @image_rotator = ImageRotator.find(params[:image_rotator_id])
  end
  private :find_image_rotator

end
