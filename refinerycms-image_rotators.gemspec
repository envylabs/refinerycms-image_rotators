Gem::Specification.new do |s|
  s.name              = %q{refinerycms-image_rotators}
  s.version           = %q{0.1.1}
  s.description       = %q{An open source Ruby on Rails image rotator engine designed for integration with RefineryCMS.}
  s.date              = %q{2010-12-07}
  s.summary           = %q{Ruby on Rails image rotator engine for RefineryCMS.}
  s.email             = %q{jacob@envylabs.com}
  s.homepage          = %q{http://envylabs.com}
  s.authors           = %w(Jacob\ Swanner)
  s.require_paths     = %w(lib)

  s.files             = [
    'app',
    'app/controllers',
    'app/controllers/admin',
    'app/controllers/admin/image_rotator_images_controller.rb',
    'app/controllers/admin/image_rotators_controller.rb',
    'app/models',
    'app/models/image_rotator.rb',
    'app/models/image_rotator_image.rb',
    'app/views',
    'app/views/admin',
    'app/views/admin/image_rotator_images',
    'app/views/admin/image_rotator_images/_form.html.erb',
    'app/views/admin/image_rotator_images/_image_rotator_image.html.erb',
    'app/views/admin/image_rotator_images/_sortable_list.html.erb',
    'app/views/admin/image_rotator_images/edit.html.erb',
    'app/views/admin/image_rotator_images/new.html.erb',
    'app/views/admin/image_rotators',
    'app/views/admin/image_rotators/_form.html.erb',
    'app/views/admin/image_rotators/_image_rotator.html.erb',
    'app/views/admin/image_rotators/_sortable_list.html.erb',
    'app/views/admin/image_rotators/edit.html.erb',
    'app/views/admin/image_rotators/index.html.erb',
    'app/views/admin/image_rotators/new.html.erb',
    'config',
    'config/locales',
    'config/locales/en.yml',
    'config/locales/nb.yml',
    'config/locales/nl.yml',
    'config/routes.rb',
    'lib',
    'lib/gemspec.rb',
    'lib/generators',
    'lib/generators/refinerycms_image_rotators_generator.rb',
    'lib/generators/templates',
    'lib/generators/templates/db',
    'lib/generators/templates/db/migrate',
    'lib/generators/templates/db/migrate/create_image_rotators.rb',
    'lib/generators/templates/db/seeds',
    'lib/generators/templates/db/seeds/image_rotators.rb',
    'lib/generators/templates/public',
    'lib/generators/templates/public/images',
    'lib/generators/templates/public/images/arrows.png',
    'lib/generators/templates/public/images/bullets.png',
    'lib/generators/templates/public/images/loading.gif',
    'lib/generators/templates/public/javascripts',
    'lib/generators/templates/public/javascripts/jquery.image-rotators.js',
    'lib/generators/templates/public/javascripts/refinery',
    'lib/generators/templates/public/javascripts/refinery/admin.js',
    'lib/generators/templates/public/stylesheets',
    'lib/generators/templates/public/stylesheets/image-rotators.css',
    'lib/image_rotators.rb',
    'lib/refinerycms-image_rotators.rb',
    'lib/tasks',
    'lib/tasks/image_rotators.rake',
    'readme.md'
  ]
end
