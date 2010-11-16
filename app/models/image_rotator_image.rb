class ImageRotatorImage < ActiveRecord::Base

  acts_as_indexed :fields => [:url]
  
  belongs_to :image_rotator
  belongs_to :image

end
