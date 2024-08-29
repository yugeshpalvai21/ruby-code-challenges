class BowlingGame
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    total_score = 0
    frame_index = 0
    10.times do
      if strike?(frame_index)
        total_score += 10 + @rolls[frame_index + 1] + @rolls[frame_index + 2]
        frame_index += 1
      elsif spare?(frame_index)
        total_score += 10 + @rolls[frame_index + 2]
        frame_index += 2
      else
        total_score += @rolls[frame_index] + @rolls[frame_index + 1]
        frame_index += 2
      end
    end
    total_score
  end


  private

  def spare?(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1] == 10
  end

  def strike?(frame_index)
    @rolls[frame_index] == 10
  end
end