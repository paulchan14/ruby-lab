require 'tty-prompt'
require './Die'
require './Utilities'
require './artwork'
require './diceTable'

prompt = TTY::Prompt.new

showTitle

keepRollingDice = true

while keepRollingDice
  bonus = 0
  isCritMiss = false
  isCritHit = false


  sides = prompt.select("Which die would you like to roll?", getDiceTable)

  puts

  addBonus = prompt.yes?("Do you need to add a bonus?")

  puts

  if addBonus
    bonus = prompt.ask("How much is your bonus?", convert: :int)
  end

  rollAgain = true

  while rollAgain
    puts "Let's roll!"
    sleep(1)
    puts "..."
    sleep(1)

    diceRoller = Die.new(sides)
    utils = Utilities.new()

    natRoll = diceRoller.roll()
    rollWithBonus = utils.addBonus(natRoll, bonus)

    crit = ""

    if utils.isCritMiss(natRoll)
      crit = ", a critical miss!"
      isCritMiss = true
    elsif utils.isCritHit(natRoll)
      crit = ", a critical hit!!"
    end

    puts
    puts "You rolled a natural #{result}#{crit}"

    rollMessage = ""

    if isCritHit && sides === 20
      rollMessage = "Great job!!"
    elsif isCritMiss
      rollMessage = "Better luck next time!"
    else rollMessage = "May the odds be ever in your favor!"
    end

    if (!isCritMiss || isCritHit) & addBonus
      puts "Your total is #{total}"
    end

    puts
    puts rollMessage
    puts

    rollAgain = prompt.yes?("Would you like to roll that D#{sides} again?")
  end

  keepRollingDice = prompt.yes?("Do you need to roll a different die?")
  
  puts

end
showFarewell
