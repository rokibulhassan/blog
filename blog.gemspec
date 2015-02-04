$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blogging"
  s.version     = Blog::VERSION
  s.authors     = ["Rokibul Hasan"]
  s.email       = ["rakib063049@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Blog."
  s.description = "TODO: Description of Blog."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.1"
  s.add_dependency "devise", "~> 3.4.1"
  s.add_dependency "simple_form", "~> 3.1.0"
  s.add_dependency "twitter-bootstrap-rails", "~> 3.2.0"
end
