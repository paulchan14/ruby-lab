class Die
  def initialize(sides)
    @sides = sides
  end

  def generate_die_roll
    rand(@sides) + 1
  end

  def roll(number=1)
    roll_array = []
    number.times do
      roll_array << generate_die_roll
    end
    total = 0
    roll_array.each do |roll|
      new_total = total + roll
      total = new_total
    end
    total
  end
end

SIX_SIDED_DIE = Die.new(6)
EIGHT_SIDED_DIE = Die.new(8)
TEN_SIDED_DIE = Die.new(10)
TWENTY_SIDED_DIE = Die.new(20)

puts "We're rolling a six sided die!"
puts SIX_SIDED_DIE.roll

puts "Now we're rolling two 20 sided die twice!"
puts TWENTY_SIDED_DIE.roll(2)