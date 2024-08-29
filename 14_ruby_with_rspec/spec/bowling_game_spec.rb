require 'bowling_game'

RSpec.describe BowlingGame do
  it 'instantiate BowlingGame object' do
    expect(subject).to be_instance_of(BowlingGame)
  end
end 