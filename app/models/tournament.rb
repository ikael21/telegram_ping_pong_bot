# Base class
# See *_tournament.rb files in app/models directory
# Warning!!!
# app/models/league_tournament.rb file does not inherit from Tournament
# It is needed to associate multiple tournaments with multiple leagues
class Tournament < ActiveRecord::Base
  has_and_belongs_to_many :leagues

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
end
