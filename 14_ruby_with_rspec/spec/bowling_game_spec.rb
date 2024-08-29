require 'bowling_game'

RSpec.describe BowlingGame do
  it 'instantiate BowlingGame object' do
    expect(subject).to be_instance_of(BowlingGame)
  end

  it 'can score a gutter game (all 0s)' do
    20.times { subject.roll(0) }
    expect(subject.score).to eq(0)
  end
end 