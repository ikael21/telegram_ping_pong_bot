class League < ActiveRecord::Base
  has_and_belongs_to_many :tournaments

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
end
