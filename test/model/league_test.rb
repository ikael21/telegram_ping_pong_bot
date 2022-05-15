# frozen_string_literal: true

require 'spec_helper'

RSpec.describe(League) do
  it 'saves itself inside a database' do
    league = FactoryBot.create(:league)
    expect(league.save).to(eq(true))
  end
end
