require 'telegram/bot'
require 'active_record'
require_relative '../bot_token'
require_relative 'model_requirements'
require_relative 'app'
require 'erb'

def configure_db
  db_config_file = File.join(
    File.expand_path('..', __FILE__), '..', 'db', 'database.yml'
  )
  YAML.load(ERB.new(File.read(db_config_file)).result)
end

# connect to a database (PostgreSQL)
ActiveRecord::Base.establish_connection(configure_db['development'])
