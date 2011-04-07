require 'refinery'
require File.expand_path('../image_rotators', __FILE__)

module Refinery
  module ImageRotators
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "image_rotators"
          plugin.menu_match = /(admin|refinery)\/(image_rotators|image_rotator_images)$/
          plugin.activity = {:class => ImageRotator, :title => 'title'}
        end
      end

      config.to_prepare do
        Image.class_eval do
          has_many :image_rotator_images, :dependent => :destroy
        end
      end
    end
  end
end
