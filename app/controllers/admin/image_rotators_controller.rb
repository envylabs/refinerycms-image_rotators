class Admin::ImageRotatorsController < Admin::BaseController

  crudify :image_rotator, :order => 'title ASC'

end
