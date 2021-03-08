# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require 'factory_bot'
require 'faker'
require 'support/factory_bot'
require 'spree/testing_support/factories'
require 'spree/testing_support/authorization_helpers'
require 'spree/testing_support/controller_requests'
Dir[Rails.root.join("spec/support/**/*.rb")].each { |file| require file }
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
  # arbitrary gems may also be filtered via:
  # config.filter_gems_from_backtrace("gem name")
  # save_and_open_pageを失敗時のみ使用するための設定
  config.after do |example|
    if (example.metadata[:type] == :feature) &&
        example.exception.present? &&
       (example.metadata[:open_on_error] == true)
    end
  end
end
