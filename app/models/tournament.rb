class Tournament < ActiveRecord::Base
  has_and_belongs_to_many :leagues

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
  validates :organizer, presence: true
  validates :status, presence: true

  enum status: [:registration, :playing, :finished]
  validates :status, inclusion: { in: statuses.keys }
end
