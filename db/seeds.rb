# frozen_string_literal: true

require_relative '../config/model_requirements'

TOURNAMENTS = %w[
  Almighty_Tennis
  OnlyBoys
  OnlyGirls
].freeze

LEAGUES = %w[
  Noobies
  Amateurs
  Masters
].freeze

leagues = []
tournaments = []
LEAGUES.size.times do |i|
  leagues << League.new(name: LEAGUES[i])
  tournaments << Tournament.new do |t|
    t.name = TOURNAMENTS[i]
    t.organizer = 'ikael'
    t.status = 'registration'
  end
end

leagues.each do |league|
  tournaments.each do |tournament|
    tournament.leagues << league
    tournament.save
  end
end

PLAYERS = %w[ikael fess kar laeda].freeze
PLAYERS.each do |player_nickname|
  Player.create(nickname: player_nickname)
end
