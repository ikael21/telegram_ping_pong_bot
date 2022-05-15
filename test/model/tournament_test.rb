# frozen_string_literal: true

require 'spec_helper'

RSpec.describe(Tournament) do
  subject {
    described_class.new(
      name: 'tournament_name',
      organizer: 'orginizer',
      status: 'registration'
    )
  }

  it 'is valid with valid attributes' do
    expect(subject).to(be_valid)
  end

  it 'is not valid without attributes' do
    expect(Tournament.new).to(be_invalid)
  end

  it 'is not valid without name' do
    subject.name = nil
    expect(subject).to(be_invalid)
  end

  it 'is not valid without organizer' do
    subject.organizer = nil
    expect(subject).to(be_invalid)
  end

  it 'is not valid without status' do
    subject.status = nil
    expect(subject).to(be_invalid)
  end
end
