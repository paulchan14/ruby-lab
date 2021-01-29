# Methods and Classes


# Defining a method
def attack(target, weapon)
  roll, hit = weapon.swing(target)
  if hit
   puts "You rolled a #{roll}. You hit for #{weapon.damage} damage!"
   
  else
   puts "You missed!"
 end
end
 
 # Every method returns exactly one object.
 
 # If you don't use the return statement earlier, 
 # the last evaluated statement will be the returned object

 # Methods should use snake_case
 
 
 # Names should use PascalCase
class Creature
  def initialize(name, health, armorClass)
    @name = name
    @health = health
    @armorClass = armorClass
  end

    attr_accessor :name

    def hp
      @health
    end

    def ac
      @armorClass
    end
end

kobold = Creature.new("Kobold", 11, 13)

kobold.name = "Frog"
puts kobold.name


class Weapon
  def initialize(name, damage)
    @name = name
    @damage = damage
  end

  def damage
    @damage
  end

  def swing(target)
    roll = rand(20) + 1
    hit = roll >= target.ac
    [roll, hit]
  end


end


longsword = Weapon.new("Longsword", 5)

# puts longsword.swing(kobold)

# puts attack(kobold, longsword)
