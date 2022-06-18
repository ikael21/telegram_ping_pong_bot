# frozen_string_literal: true

FactoryBot.define do
  sequence :string, aliases: [:name, :organizer, :nickname] do |n|
    "string#{n}"
  end
end
