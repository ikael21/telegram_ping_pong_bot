# frozen_string_literal: true

FactoryBot.define do
  factory :tournament do
    name
    organizer
    status { 'registration' }
  end
end
