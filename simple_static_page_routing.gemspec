$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_static_page_routing/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_static_page_routing"
  s.version     = SimpleStaticPageRouting::VERSION
  s.authors     = ["John Epperson"]
  s.email       = ["j.epperson@verizon.net"]
  s.homepage    = "https://github.com/kirillian/simple_static_page_routing"
  s.summary     = "Simple static page routing"
  s.description = "Simple Static Page Routing is a means to route all pages in a given controller as root/pagename"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
end
