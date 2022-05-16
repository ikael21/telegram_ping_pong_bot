# frozen_string_literal: true

class Player < ActiveRecord::Base
  has_and_belongs_to_many :teams

  validates_presence_of :nickname
  validates :nickname, uniqueness: true
end
