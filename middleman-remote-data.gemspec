# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "middleman-remote-data/version"

Gem::Specification.new do |s|
  s.name        = "middleman-remote-data"
  s.version     = Middleman::RemoteData::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Thomas Reynolds"]
  s.email       = ["me@tdreyno.com"]
  s.homepage    = "https://github.com/tdreyno/middleman-remote-data"
  s.summary     = %q{Adds remote JSON and XML data sources to Middleman}
  s.description = %q{Adds remote JSON and XML data sources to Middleman}

  s.rubyforge_project = "middleman-remote-data"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency("middleman-core", [">= 3.4.0"])
  s.add_runtime_dependency("faraday", ['>= 0.7.4', '< 0.9'])
  s.add_runtime_dependency("faraday_middleware", ['>= 0.8.6'])
  s.add_runtime_dependency("multi_json", ['>= 1.2.0'])
  s.add_runtime_dependency("multi_xml", ['>= 0.4.2'])
end
