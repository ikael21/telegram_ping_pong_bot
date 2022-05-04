require_relative 'app_requirements'

Telegram::Bot::Client.run(BOT_TOKEN) do |bot|
  bot.listen do |message|
    # some logic will be soon
  end
end
