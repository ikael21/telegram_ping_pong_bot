# frozen_string_literal: true

require 'spec_helper'

RSpec.describe(Player) do
  subject { described_class.new(nickname: 'nickname') }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without attributes' do
    expect(Player.new).to be_invalid
  end

  it 'is not valid without nickname' do
    subject.nickname = nil
    expect(subject).to be_invalid
  end
end
