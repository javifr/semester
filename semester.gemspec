$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "semester/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "semester"
  s.version     = Semester::VERSION
  s.authors     = ["Javier Fernández Riverola"]
  s.email       = ["jfernandezriverola@gmail.com"]
  s.homepage    = "www.javifernandez.me"
  s.summary     = "Semester related functions added to Date and DateTime in rails"
  s.description = "Semester related functions added to Date and DateTime in rails"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0.4"

  s.add_development_dependency "sqlite3"
end
