$:.push File.expand_path("../lib", __FILE__)
require "version"

Gem::Specification.new do |s|
  s.name        = "svgo"
  s.version     = SvgoVersion::VERSION
  s.summary     = "SVGO for Ruby."
  s.description = "A Ruby wrapper for SVGO using mini_racer."
  s.authors     = ["Chris Snijder"]
  s.email       = "chris@greenhost.nl"
  s.files       = ["lib/svgo.rb"]
  s.homepage    = "https://github.com/greenhost/svgo-ruby"
  s.license     = "Apache 2.0"
  s.files       = `git ls-files`.split("\n") - [
    ".gitignore",
    ".ruby-version",
    "package.json",
    "node_modules"
  ]
  s.bindir = ["bin"]
  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 2.4.2'
  s.executables << "svgo-ruby"
  s.add_runtime_dependency "mini_racer", '>= 0.4.0'
  s.add_development_dependency "rake", '>= 0.11.3'
  s.add_development_dependency "pry"
end
