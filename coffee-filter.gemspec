# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "coffee-filter/version"

Gem::Specification.new do |s|
  s.name        = "coffee-filter"
  s.version     = Coffee::Filter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Paul Nicholson"]
  s.email       = ["paul@webpowerdesign.net"]
  s.homepage    = "http://github.com/paulnicholson/coffee-filter"
  s.summary     = %q{CoffeeFilter is a custom haml filter for rendering coffeescript.}
  s.description = %q{CoffeeFilter is a custom haml filter for rendering coffeescript inside your haml templates. It was inspired by Ivan Nemytchenko's coffee-haml-filter but I wanted an installable gem and coffeescript as the filter name.}

  s.rubyforge_project = "coffee-filter"
  s.add_dependency('haml', '>= 3.0.18')
  s.add_dependency('coffee-script', '>= 2.2.0')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
