# frozen_string_literal: true

require 'spec_helper'

RSpec.describe(Tournament) do
  it 'saves itself inside a database' do
    tournament = FactoryBot.create(:tournament)
    expect(tournament.save).to(eq(true))
  end
end
