class Die
  def initialize(sides)
    @sides = sides
  end
    def sides
      @sides
    end

    def roll(bonus = 0)
      natRoll = rand(@sides) + 1
      [natRoll, natRoll + bonus]
    end
end
