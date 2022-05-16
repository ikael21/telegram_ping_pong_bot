# frozen_string_literal: true

class Team < ActiveRecord::Base
  has_and_belongs_to_many :players

  validates_presence_of :name
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
end
