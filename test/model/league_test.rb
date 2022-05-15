# frozen_string_literal: true

require 'spec_helper'

RSpec.describe(League) do
  subject { described_class.new(name: 'league') }

  it 'is valid with valid attributes' do
    expect(subject).to(be_valid)
  end

  it 'is not valid without attributes' do
    expect(League.new).to(be_invalid)
  end

  it 'is not valid without name' do
    subject.name = nil
    expect(subject).to(be_invalid)
  end
end
