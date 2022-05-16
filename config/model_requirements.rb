# frozen_string_literal: true

# This file requires all the model classes from app/models
Dir['app/models/*.rb'].each do |file|
  require File.expand_path(file)
end
