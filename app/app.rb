# frozen_string_literal: true


module App
  class MessageHandler

    # /start command from user
    def self.handle_greetings(bot, message)
      kb = Telegram::Bot::Types::ReplyKeyboardMarkup.new(
        keyboard: [%w[Register]],
        resize_keyboard: true,
        one_time_keyboard: true
      )
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Hello #{message.from.first_name}!",
        reply_markup: kb
      )
    end

    def self.handle_message(bot, message)
      if message.text == '/start'
        handle_greetings(bot, message)
      end
    end
  end
end
