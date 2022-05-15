# frozen_string_literal: true

class Tournament < ActiveRecord::Base
  has_and_belongs_to_many :leagues

  validates_presence_of :name
  validates_presence_of :organizer
  validates_presence_of :status
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }

  enum status: [:registration, :playing, :finished]
  validates :status, inclusion: { in: statuses.keys }
end
