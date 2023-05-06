# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mddo_toolbox_cli_version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 3.1.0'

  spec.name          = 'mddo-toolbox-cli'
  spec.version       = MddoToolboxCli::VERSION
  spec.authors       = ['corestate55']
  spec.email         = ['manabu.hagiwara@okinawaopenlabs.org']

  spec.summary       = 'MDDO project toolbox'
  spec.description   = 'CLI frontend for MDDO playground'
  spec.homepage      = 'https://github.com/ool-mddo/mddo-toolbox-cli'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/ool-mddo'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
          'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # source rubygems.pkg.github.com/ool-mddo
  # see: Gemfile
  spec.add_runtime_dependency 'netomox', '0.3.0.pre2'

  spec.add_runtime_dependency 'httpclient', '~> 2.8'
  spec.add_runtime_dependency 'test-unit', '~> 3.5'
  spec.add_runtime_dependency 'thor', '~> 1.2'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rubocop', '~> 1.37'
  spec.add_development_dependency 'rubocop-rake', '~> 0.6'
  spec.add_development_dependency 'yard', '~> 0.9'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
