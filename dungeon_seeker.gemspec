# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dungeonseeker/version"

Gem::Specification.new do |s|
  s.name = "dungeonseeker"
  s.version = '0.0.0'
  s.authors = ["Bernie Chiu"]
  s.email = ["bernie_chiu@yahoo.com.tw"]
  s.homepage = ""
  s.summary = %q{TODO: A simple dungeon game.}
  s.description = %q{TODO: Go through each room and face something scary}

  s.rubyforge_project = "dungeonseeker"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end