ENV["RACK_ENV"] = "test"

require 'simplecov'
require 'simplecov-console'
require 'capybara/rspec'
require './app.rb'
# require 'database_cleaner'
require './models/data_mapper_setup.rb'

Capybara.app = Chitter

# RSpec.configure do |config|
#  config.before(:suite) do
#   DatabaseCleaner.strategy = :transaction
#   DatabaseCleaner.clean_with(:truncation)
#  end
#
#  config.before(:each) do
#      DatabaseCleaner.start
#    end
#
#    config.after(:each) do
#    DatabaseCleaner.clean
#  end
#
# end


SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
