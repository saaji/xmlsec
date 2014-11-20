# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "xmlsec/version"

Gem::Specification.new do |s|
  s.name        = "xmlsec"
  s.version     = XmlSec::VERSION
  s.authors     = ["Tomas Didziokas", "Justas Janauskas", "Edvinas Bartkus", "Laurynas Butkus"]
  s.email       = ["tomas.did@gmail.com", "jjanauskas@gmail.com", "edvinas.bartkus@gmail.com", "laurynas.butkus@gmail.com"]
  s.homepage    = "https://github.com/friendlyfashion/xmlsec"
  s.extensions  = ["ext/xmlsec/extconf.rb"]
  s.summary     = "Ruby bindings for xmlsec"
  s.description = 'Ruby bindings for xmlsec'

  # s.rubyforge_project = "xmlsec"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  # tests
  s.add_development_dependency 'rake-compiler', "~> 0.9.3"
  s.add_development_dependency 'rake', '~> 10.3.2'
  s.add_development_dependency 'rspec', '~> 3.1.0'
  s.add_development_dependency 'nokogiri', '~> 1.6.4.1'
end
