# frozen_string_literal: true

# This file requires all the model classes from app/models
require File.expand_path 'app/models/user.rb'
Dir['app/models/*.rb'].each do |file|
  require File.expand_path(file)
end
