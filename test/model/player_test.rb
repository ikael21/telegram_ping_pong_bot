# frozen_string_literal: true

require 'spec_helper'

RSpec.describe(Player) do
  it 'is not valid without attributes' do
    expect(Player.new).to(be_invalid)
  end

  it 'is not valid without first name' do
    player = Player.new do |p|
      p.last_name = 'last_name'
      p.nickname = 'nickname'
    end
    expect(player).to(be_invalid)
  end

  it 'is not valid without last name' do
    player = Player.new do |p|
      p.first_name = 'first_name'
      p.nickname = 'nickname'
    end
    expect(player).to(be_invalid)
  end

  it 'is not valid without nickname' do
    player = Player.new do |p|
      p.first_name = 'first_name'
      p.last_name = 'last_name'
    end
    expect(player).to(be_invalid)
  end

  it 'is valid with valid attributes' do
    player = FactoryBot.create(:player)
    expect(player).to(be_valid)
  end

  it 'has type `Player`' do
    expect(Player.new.type).to(eq('Player'))
  end
end
