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
  tournament =
    if tournament_name == 'Almighty_Tennis'
      MixedTournament.new(name: tournament_name)
    elsif tournament_name == 'OnlyBoys'
      SoloMaleTournament.new(name: tournament_name)
    else
      SoloFemaleTournament.new(name: tournament_name)
    end
  tournaments << tournament
end

leagues.each do |league|
  tournaments.each do |tournament|
    tournament.leagues << league
    tournament.save
  end
end
