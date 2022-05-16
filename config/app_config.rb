# frozen_string_literal: true

require 'telegram/bot'
require 'active_record'
require_relative '../bot_token'
require_relative 'model_requirements'
require_relative '../app/app'
require 'erb'

# load database config file into memory
def configure_db
  config = File.join(
    File.expand_path(__dir__), '..', 'db', 'config.yml'
  )
  YAML.load(ERB.new(File.read(config)).result)
end

# connect to a database depending on the environment
case ENV['RAILS_ENV']
when 'development'
  require_relative './environments/development'
when 'test'
  require_relative 'environments/test'
else
  puts 'RAILS_ENV is not provided or invalid'
  exit 1
end
