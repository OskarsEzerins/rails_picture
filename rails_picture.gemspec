# frozen_string_literal: true

require_relative 'lib/rails_picture/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails_picture'
  spec.version       = RailsPicture::VERSION
  spec.authors       = ['Oskars Ezerins']
  spec.email         = ['oskarsezerins@users.noreply.github.com']

  spec.summary       = 'Rails picture_tag helper'
  spec.description   = 'Simple picture_tag helper, which can show various image formats based on browser support'
  spec.homepage      = 'https://github.com/OskarsEzerins/rails_picture'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/OskarsEzerins/rails_picture'
  spec.metadata['changelog_uri'] = 'https://github.com/OskarsEzerins/rails_picture/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_dependency 'rails', '~> 6.1.3'

  spec.add_development_dependency 'capybara'
  spec.add_development_dependency 'capybara-screenshot'
  spec.add_development_dependency 'cuprite'
  spec.add_development_dependency 'puma'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'slim'
end
