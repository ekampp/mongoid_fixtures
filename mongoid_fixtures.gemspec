# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid_fixtures/version'

Gem::Specification.new do |spec|
  spec.name          = 'mongoid_fixtures'
  spec.version       = MongoidFixtures::VERSION
  spec.authors       = ['Javier L. Velasquez', "Emil Kampp<emil@kampp.me>"]
  spec.email         = ['nycjv321@gmail.com']

  spec.summary       = 'Provides mechanism to easily create fixtures with Mongoid'
  spec.description   = 'Provides mechanism to easily create fixtures with Mongoid'
  spec.homepage      = 'https://github.com/nycjv321/mongoid_fixtures'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.5'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1.4'
  spec.add_development_dependency 'rake',    '~> 12.3'
  spec.add_development_dependency 'rspec',   '~> 3.9.0'
  spec.add_dependency  'linguistics',    '~> 2.0.4'
  spec.add_dependency  'mongoid',        '~> 7.0'
  spec.add_dependency  'monkey_patches', '~> 0.0.3'
  spec.add_development_dependency 'bcrypt'
end
