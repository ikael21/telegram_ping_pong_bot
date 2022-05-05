require_relative '../app/model_requirements'

TOURNAMENTS_SEEDS = %w(
  Almighty_Tennis
  OnlyBoys
  OnlyGirls
)

LEAGUES_SEEDS = %w(
  Noobies
  Amateurs
  Masters
)

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
