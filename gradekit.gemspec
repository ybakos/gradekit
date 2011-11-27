# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gradekit/version"

Gem::Specification.new do |s|
  s.name        = "gradekit"
  s.version     = Gradekit::VERSION
  s.authors     = ["Yong Joseph Bakos"]
  s.email       = ["ybakos@humanoriented.com"]
  s.homepage    = "http://humanoriented.com"
  s.summary     = "CSCI261 grading toolkit"
  s.description = "Grading automation toolkit for CSCI261 Programming Concepts at the Colorado School of Mines."

  s.rubyforge_project = "gradekit"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "ruby-debug19"
  s.add_development_dependency "rake"
  s.add_development_dependency "turn"
  s.add_development_dependency "minitest"
  s.add_runtime_dependency "rubyzip"
end
