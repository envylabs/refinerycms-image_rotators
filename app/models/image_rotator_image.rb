require 'acts_as_list'

class ImageRotatorImage < ActiveRecord::Base

  belongs_to :image_rotator
  belongs_to :image

  acts_as_indexed :fields => [:url]
  acts_as_list

  default_scope order('position ASC')

end
