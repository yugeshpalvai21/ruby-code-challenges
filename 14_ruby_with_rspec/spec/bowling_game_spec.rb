require 'bowling_game'

RSpec.describe BowlingGame do
  it 'instantiate BowlingGame object' do
    expect(subject).to be_instance_of(BowlingGame)
  end

  it 'can score a gutter game (all 0s)' do
    20.times { subject.roll(0) }
    expect(subject.score).to eq(0)
  end

  it 'can score a game of all ones' do
    20.times { subject.roll(1) }
    expect(subject.score).to eq(20)
  end

  it 'can score a spare' do
    game = described_class.new

    game.roll(5)
    game.roll(5) # spare
    game.roll(3)
    17.times { game.roll(0) }

    expect(game.score).to eq(16)
  end

  it 'can score a strike' do
    subject.roll(10) # strike
    subject.roll(3)
    subject.roll(4)
    16.times { subject.roll(0) }

    expect(subject.score).to eq(24)
  end

  it 'can score a perfect game (all strikes)' do
    12.times { subject.roll(10) } # 12 strikes for a perfect game
    expect(subject.score).to eq(300)
  end
end 