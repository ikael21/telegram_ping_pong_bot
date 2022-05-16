require 'spec_helper'

RSpec.describe(Team) do
  subject { described_class.new(name: 'team') }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end
