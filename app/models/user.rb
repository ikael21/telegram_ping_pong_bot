# frozen_string_literal: true

class User < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :nickname
  validates :nickname, uniqueness: true
end
