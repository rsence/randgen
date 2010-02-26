# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name      = 'randgen'
  s.authors   = ['Juha-Jarmo Heinonen']
  s.email     = 'o@rsence.org'
  s.version   = '0.9.9'
  s.date      = '2010-02-26'
  s.homepage  = 'http://www.riassence.org/'
  s.summary   = 'Riassence RandGen'
  s.has_rdoc  = false
  s.require_paths = [
    'randgen'
  ]
  s.description = <<END
Simple C extension that produces variable-length random ascii-safe strings quickly.
This used to be a fixed part of the Riassence Framework, but it's distributed as a separate gem now.
END
  s.files = %w[
    License.txt
    README
    extconf.rb
    randgen.c
    randgen.gemspec
  ]
  s.files.reject! { |fn| fn.include? ".svn" }
  s.files.reject! { |fn| fn.include? ".git" }
  s.test_file = 'test_randgen.rb'
  s.required_ruby_version = '>= 1.8.6'
  s.extensions = [
    'extconf.rb'
  ]
  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.3') if s.respond_to? :required_rubygems_version=
end

if $0 == __FILE__
  require 'rubygems/gem_runner'
  Gem::GemRunner.new.run ['build', 'randgen.gemspec']
end

