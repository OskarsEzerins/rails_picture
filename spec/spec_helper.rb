# frozen_string_literal: true

require 'rails_picture'

require File.expand_path('./dummy/config/environment.rb', __dir__)
ENV['RAILS_ROOT'] ||= "#{File.dirname(__FILE__)}./spec/dummy"

require 'rspec/rails'
require 'capybara/rails'
require 'capybara/rspec'
require 'capybara-screenshot/rspec'
require 'capybara/cuprite'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

Capybara.default_driver = :cuprite
Capybara.javascript_driver = :cuprite
Capybara.asset_host = 'http://localhost:3000'
Capybara.server = :puma, { Silent: true }
Capybara.save_path = '../../tmp/capybara'

Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(app, window_size: [1400, 900], inspector: true, timeout: 5, headless: true, js_errors: true)
end

Capybara::Screenshot.register_driver(:cuprite) { |driver, path| driver.save_screenshot(path) }
