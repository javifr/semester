# $:.push File.expand_path("../lib", __FILE__)

# # Maintain your gem's version:
# require "semester/version"

# # Describe your gem and declare its dependencies:
# Gem::Specification.new do |s|
#   s.name        = "semester"
#   s.version     = Semester::VERSION
#   s.authors     = ["Javier Fernández Riverola"]
#   s.email       = ["jfernandezriverola@gmail.com"]
#   s.homepage    = "http://www.javifernandez.me"
#   s.summary     = "Semester related functions added to Date and DateTime in rails"
#   s.description = "Semester related functions added to Date and DateTime in rails"

#   s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
#   s.test_files = Dir["test/**/*"]

#   s.add_dependency "rails", ">= 4.0.4"

#   s.add_development_dependency "sqlite3"
# end


# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'semester/version'

Gem::Specification.new do |spec|
  spec.name          = "semester"
  spec.version       = Semester::VERSION
  spec.authors       = ["Javi Fernández"]
  spec.email         = ["jfernandezriverola@gmail.com"]
  spec.homepage    = "http://www.javifernandez.me"
  spec.summary     = "Semester related functions added to Date and DateTime in rails"
  spec.description = "Semester related functions added to Date and DateTime in rails"
  spec.license       = "MIT"

  # spec.files         = `git ls-files -z`.split("\x0")
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  spec.test_files = Dir["test/**/*"]

  spec.rubyforge_project = "semester"

  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 4.0.4"
  spec.add_development_dependency "sqlite3"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
