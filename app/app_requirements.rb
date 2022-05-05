require 'telegram/bot'
require 'active_record'
require_relative '../bot_token'
require_relative 'model_requirements'
require_relative 'app'

def configure_db
  db_config_file = File.join(File.expand_path('..', __FILE__), '..', 'db', 'config.yml')
  YAML.load(File.read(db_config_file))
end

# connect to sqlite3
ActiveRecord::Base.establish_connection(configure_db['development'])
