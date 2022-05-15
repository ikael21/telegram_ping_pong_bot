# frozen_string_literal: true

require_relative '../config/model_requirements'

TOURNAMENTS_SEEDS = %w[
  Almighty_Tennis
  OnlyBoys
  OnlyGirls
].freeze

LEAGUES_SEEDS = %w[
  Noobies
  Amateurs
  Masters
].freeze

leagues = []
LEAGUES_SEEDS.each do |league_name|
  leagues << League.new(name: league_name)
end

tournaments = []
TOURNAMENTS_SEEDS.each do |tournament_name|
  tournaments << Tournament.new(
    name: tournament_name,
    organizer: 'ikael',
    status: :playing
  )
end

leagues.each do |league|
  tournaments.each do |tournament|
    tournament.leagues << league
    tournament.save
  end
end

PLAYERS = [
  {
    first_name: 'Anton',
    last_name: 'Yudin',
    nickname: 'ikael'
  },
  {
    first_name: 'Ant',
    last_name: 'Yud',
    nickname: 'fess'
  },
  {
    first_name: 'Antonio',
    last_name: 'Vivaldi',
    nickname: 'kar'
  },
  {
    first_name: 'Ivette',
    last_name: 'Kael',
    nickname: 'laeda'
  }
].freeze

PLAYERS.each do |player|
  Player.create(
    first_name: player[:first_name],
    last_name: player[:last_name],
    nickname: player[:nickname]
  )
end
