# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'circle_status/version'

Gem::Specification.new do |spec|
  spec.name          = 'circle_status'
  spec.version       = CircleStatus::VERSION
  spec.authors       = ['Jake Moffatt']
  spec.email         = ['jakeonrails@gmail.com']
  spec.license       = 'The MIT License (MIT)'

  spec.summary       = %q{A CLI tool to report your Circle CI build status.}
  spec.description   = %q{A CLI tool to report your Circle CI build status.}
  spec.homepage      = %q{https://github.com/jakeonrails/circle_status}

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'TODO: Set to http://mygemserver.com'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = ['circle-status']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-shell'
  spec.add_development_dependency 'pry-byebug'

  spec.add_dependency 'circleci'
  spec.add_dependency 'git'
  spec.add_dependency 'awesome_print'
end
