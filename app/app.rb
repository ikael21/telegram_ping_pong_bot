class App
  class << self

    def handle_greetings(bot, message)
      reply_keyboard = Telegram::Bot::Types::ReplyKeyboardMarkup.new(
        keyboard: [ %w(REGISTER) ],
        one_time_keyboard: true,
        resize_keyboard: true
      )
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Hello #{message.from.first_name}!",
        reply_markup: reply_keyboard
      )
    end

    # OPTIMIZE change this method
    def handle_message(bot, message)
      p message
      case message
      when Telegram::Bot::Types::Message
        if message.text == '/start'
          handle_greetings(bot, message)
        else
          bot.api.send_message(chat_id: message.chat.id, text: "Not implemented")
        end
      else
        bot.api.send_message(chat_id: message.chat.id, text: "Not implemented")
      end
    end
  end
end
