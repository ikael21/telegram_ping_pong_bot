require_relative '../app/models/tournament'
require_relative '../app/models/solo_male_tournament'
require_relative '../app/models/solo_female_tournament'
require_relative '../app/models/duo_male_tournament'
require_relative '../app/models/duo_female_tournament'
require_relative '../app/models/mixed_tournament'


NAMES = %w(
  Elnora Bautista
  Clair Bradford
  Elma Long
)

NAMES.each do |name|
  SoloMaleTournament.create(name: name)
  SoloFemaleTournament.create(name: name)
  DuoMaleTournament.create(name: name)
  DuoFemaleTournament.create(name: name)
  MixedTournament.create(name: name)
end
