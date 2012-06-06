# Configure Rails Environment
ENV['APP_ROOT'] ||= File.expand_path(__FILE__).split("vendor#{File::SEPARATOR}wagons").first
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require File.join(ENV["APP_ROOT"], 'test', 'test_helper.rb')


class ActiveSupport::TestCase  
  self.reset_fixture_path File.expand_path("../fixtures", __FILE__)
end
