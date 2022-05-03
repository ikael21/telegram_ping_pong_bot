require 'telegram/bot'
require 'active_record'
require_relative '../bot_token'


def configure_db
  db_config_file = File.join(File.expand_path('..', __FILE__), '..', 'db', 'config.yml')
  YAML.load(File.read(db_config_file))
end


ActiveRecord::Base.establish_connection(configure_db['development'])


Telegram::Bot::Client.run(BOT_TOKEN) do |bot|
  bot.listen do |message|
    # some logic will be soon
  end
end
