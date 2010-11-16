class ImageRotator < ActiveRecord::Base

  has_many :images, :class_name => 'ImageRotatorImage'

  alias_attribute :to_s, :title
end
