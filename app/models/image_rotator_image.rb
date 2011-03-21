class ImageRotatorImage < ActiveRecord::Base

  belongs_to :image_rotator
  belongs_to :image

  validates :url, :presence => true

  acts_as_indexed :fields => [:url]
  acts_as_list

  default_scope order('position ASC')

end
