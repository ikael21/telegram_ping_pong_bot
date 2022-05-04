require File.expand_path 'app/models/tournament.rb'
Dir['app/models/*.rb'].each do |file|
  require File.expand_path(file) unless file == 'app/models/tournament.rb'
end
