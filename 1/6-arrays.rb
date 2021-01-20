# Arrays


# Can contain all kinds of objects

# 0-indexed, set order, bracket notation

longsword = "Longsword"
coin = { "gold" => 450, "silver" => 20 }
staff = "Staff of Napalm"
dagger = "Dagger"

loot = [longsword, coin, staff]


# Lookup by bracket notation loot[2] 

# << (Shovel operator) adds an item to the end of the array 

# loot << dagger 



# You can also use bracket notation to set element anywhere else

# Nested arrays: OK!

# puts loot


# Addition

# gems1 = ["Ruby", "Sapphire"]
# gems2 = ["Emerald", "Topaz"]

# puts gems1 + gems2


# Subtraction 

# cularinaryMenu = ["Yawning Portal", "Buttermilk Biscuits", "Traveller's Stew"]
# biscuits = ["Buttermilk Biscuits"]

# puts cularinaryMenu - biscuits


# Multiplication


# heroesFeast = ["Elven Bread", "Orc Bacon"]

# puts heroesFeast * 5

# Find Overlap

# treasureChest = ["Ruby", "Topaz", "Onyx"]
# smallSatchell = ["Topaz", "Amethyst"]

# puts treasureChest & smallSatchell


# First and Last

party = ["Ranger", "Bard", "Cleric", "Paladin"]

puts party.first
puts party.last