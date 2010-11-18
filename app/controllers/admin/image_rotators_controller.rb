class Admin::ImageRotatorsController < Admin::BaseController

  before_filter :store_location, :only => [:edit]

  crudify :image_rotator, :order => 'title ASC'

end
