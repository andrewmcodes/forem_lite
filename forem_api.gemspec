# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'forem_api/version'

Gem::Specification.new do |s|
  s.name          = 'forem_api'
  s.version       = ForemApi::VERSION
  s.authors       = ['Andrew Mason']
  s.email         = ['andrewmcodes@protonmail.com']
  s.homepage      = 'https://github.com/Andrew Mason/forem_api'
  s.licenses      = ['MIT']
  s.summary       = '[summary]'
  s.description   = '[description]'

  s.files         = Dir.glob('{bin/*,lib/**/*,[A-Z]*}')
  s.executables   = Dir.glob('bin/*').map { |f| File.basename(f) }

  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
end
