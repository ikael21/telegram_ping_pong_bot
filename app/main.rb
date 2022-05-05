require_relative 'app_requirements'

Telegram::Bot::Client.run(BOT_TOKEN) do |bot|
  bot.listen do |message|
    App.handle_message(bot, message)
  end
end
