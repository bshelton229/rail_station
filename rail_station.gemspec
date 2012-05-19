# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rail_station/version"

Gem::Specification.new do |s|
  s.name        = "rail_station"
  s.version     = RailStation::VERSION
  s.authors     = ["Bryan Shelton"]
  s.email       = ["bryan@sheltonplace.com"]
  s.homepage    = ""
  s.summary     = %q{Bootstrap based admin interface}
  s.description = %q{A bootstrap based configurable admin interface}

  s.rubyforge_project = "rail_station"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_runtime_dependency "rails", ">=3.1"
  s.add_runtime_dependency "haml"
end
