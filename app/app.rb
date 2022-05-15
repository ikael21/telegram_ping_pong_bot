# frozen_string_literal: true

require_relative '../config/app_config'

# class represents bot app
class App
  class << self
    def handle_greetings(bot, message)
      reply_keyboard = Telegram::Bot::Types::ReplyKeyboardMarkup.new(
        keyboard: [['REGISTER']],
        one_time_keyboard: true,
        resize_keyboard: true,
      )
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Hello #{message.from.first_name}!",
        reply_markup: reply_keyboard,
      )
    end

    # OPTIMIZE: change this method
    def handle_message(bot, message)
      case message
      when Telegram::Bot::Types::Message
        handle_greetings(bot, message) if message.text == '/start'
      else
        bot.api.send_message(
          chat_id: message.chat.id,
          text: 'Not implemented',
        )
      end
    end
  end
end

Telegram::Bot::Client.run(BOT_TOKEN) do |bot|
  bot.listen do |message|
    App.handle_message(bot, message)
  end
end
