# frozen_string_literal: true

require 'spec_helper'

RSpec.describe(Player) do
  subject {
    described_class.new(
      first_name: 'first_name',
      last_name: 'last_name',
      nickname: 'nickname'
    )
  }

  it 'is valid with valid attributes' do
    expect(subject).to(be_valid)
  end

  it 'is not valid without attributes' do
    expect(Player.new).to(be_invalid)
  end

  it 'is not valid without first name' do
    subject.first_name = nil
    expect(subject).to(be_invalid)
  end

  it 'is not valid without last name' do
    subject.last_name = nil
    expect(subject).to(be_invalid)
  end

  it 'is not valid without nickname' do
    subject.nickname = nil
    expect(subject).to(be_invalid)
  end

  it 'has type `Player`' do
    expect(subject.type).to(eq('Player'))
  end
end
