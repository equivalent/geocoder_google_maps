$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "geocoder_google_maps/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "geocoder_google_maps"
  s.version     = GeocoderGoogleMaps::VERSION
  s.authors     = ["Equivalent"]
  s.email       = ["equivalent@eq8.eu"]
  s.homepage    = "http://eq8.eu"
  s.summary     = "Simple implementation of Geocoder and Google Maps."
  s.description = "Set of basic helpers and JavaScript for easy translating  Longitude and Latitude to Google Maps"

  s.files = Dir["{app,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 3.2"
  s.add_dependency "coffee-rails"
  s.add_dependency "jquery-rails"
  s.add_dependency "sass-rails"

end
