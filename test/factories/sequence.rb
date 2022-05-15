# frozen_string_literal: true

FactoryBot.define do
  sequence :string, aliases: [:name, :organizer, :first_name, :last_name, :nickname] do |n|
    "string#{n}"
  end
end
