class Player < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validates :nickname, presence: true, uniqueness: true
end
