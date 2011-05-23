require 'rails/generators/migration'

class RefinerycmsImageRotatorsGenerator < Rails::Generators::NamedBase
  include Rails::Generators::Migration
  
  source_root File.expand_path('../templates/', __FILE__)
  argument :name, :type => :string, :default => 'image_rotators', :banner => ''
  argument :attributes, :type => :array, :default => ["name:string"]

  def generate
    migration_template('db/migrate/create_image_rotators.rb', 'db/migrate/create_image_rotators.rb')
    %w(
      db/seeds/image_rotators.rb
      public/images/arrows.png
      public/images/bullets.png
      public/images/loading.gif
      public/javascripts/jquery.image-rotators.js
      public/stylesheets/image-rotators.css
    ).each { |path| copy_file path, Rails.root.join(path) }

    puts <<-EOS
------------------------
Now run:
rake db:migrate
------------------------
Put the following in your layout:
  stylesheet_link_tag    'image-rotators.css'
  javascript_include_tag 'jquery.image-rotators.js'
------------------------
    EOS
  end

  # Implement the required interface for Rails::Generators::Migration.
  def self.next_migration_number(dirname) #:nodoc:
    next_migration_number = current_migration_number(dirname) + 1
    if ActiveRecord::Base.timestamped_migrations
      [Time.now.utc.strftime("%Y%m%d%H%M%S"), "%.14d" % next_migration_number].max
    else
      "%.3d" % next_migration_number
    end
  end
  
end

# Below is a hack until this issue:
# https://rails.lighthouseapp.com/projects/8994/tickets/3820-make-railsgeneratorsmigrationnext_migration_number-method-a-class-method-so-it-possible-to-use-it-in-custom-generators
# is fixed on the Rails project.

require 'rails/generators/named_base'
require 'rails/generators/migration'
require 'rails/generators/active_model'
require 'active_record'

module ActiveRecord
  module Generators
    class Rails::Generators::NamedBase #:nodoc:
      include Rails::Generators::Migration

      # Implement the required interface for Rails::Generators::Migration.
      def self.next_migration_number(dirname) #:nodoc:
        next_migration_number = current_migration_number(dirname) + 1
        if ActiveRecord::Base.timestamped_migrations
          [Time.now.utc.strftime("%Y%m%d%H%M%S"), "%.14d" % next_migration_number].max
        else
          "%.3d" % next_migration_number
        end
      end
    end
  end
end
