class Utilities
  def addBonus(roll, bonus = 0)
    roll + bonus
  end

  def isD20(sides)
    sides === 20
  end

  def isCritHit(roll)
    roll === 20
  end

  def isCritMiss(roll)
    roll === 1
  end
end
