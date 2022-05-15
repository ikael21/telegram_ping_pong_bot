# frozen_string_literal: true

require 'telegram/bot'
require 'active_record'
require_relative '../bot_token'
require_relative 'model_requirements'
require 'erb'

# load database config file into memory
def configure_db
  db_config_file = File.join(
    File.expand_path(__dir__), '..', 'db', 'config.yml'
  )
  YAML.load(ERB.new(File.read(db_config_file)).result)
end

# connect to a database depending on the environment
case ENV['RAILS_ENV']
when 'development'
  require_relative './environments/development'
when 'test'
  require_relative 'environments/test'
end
