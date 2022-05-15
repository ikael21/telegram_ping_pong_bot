# frozen_string_literal: true

class League < ActiveRecord::Base
  has_and_belongs_to_many :tournaments

  validates_presence_of :name
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
end
