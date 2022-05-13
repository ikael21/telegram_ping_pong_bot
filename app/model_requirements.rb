require File.expand_path 'app/models/user.rb'
Dir['app/models/*.rb'].each do |file|
  require File.expand_path(file)
end
