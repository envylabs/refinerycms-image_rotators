class ImageRotator < ActiveRecord::Base

  has_many :images, :class_name => 'ImageRotatorImage'

  validates :title, :presence => true
  validates :height, :presence => true
  validates :width, :presence => true

  has_friendly_id :title, :use_slug => true

  alias_attribute :to_s, :title

end
