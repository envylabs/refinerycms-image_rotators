#!/usr/bin/env ruby
require File.expand_path('../image_rotators', __FILE__)
version = ::Refinery::ImageRotators.version
raise "Could not get version so gemspec can not be built" if version.nil?
files = Dir.glob("**/*").flatten.reject do |file|
  file =~ /\.gem(spec)?$/
end

gemspec = <<EOF
Gem::Specification.new do |s|
  s.name              = %q{refinerycms-image_rotators}
  s.version           = %q{#{version}}
  s.description       = %q{An open source Ruby on Rails image rotator engine designed for integration with RefineryCMS.}
  s.date              = %q{#{Time.now.strftime('%Y-%m-%d')}}
  s.summary           = %q{Ruby on Rails image rotator engine for RefineryCMS.}
  s.email             = %q{jacob@envylabs.com}
  s.homepage          = %q{http://envylabs.com}
  s.authors           = %w(Jacob\\ Swanner)
  s.require_paths     = %w(lib)

  s.files             = [
    '#{files.join("',\n    '")}'
  ]
end
EOF

File.open(File.expand_path("../../refinerycms-image_rotators.gemspec", __FILE__), 'w').puts(gemspec)
