# frozen_string_literal: true

class Team < ActiveRecord::Base
  validates_presence_of :name
  validates :name, length: { minimum: 2 }
end
