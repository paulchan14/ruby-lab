# Hashes


# Both keys and values can be any kind of object


# Hash Rockets: => ( old syntax )

# bestiary = { "Kobold" => ["AC: 12", "HP: 5"], "Guard" => ["AC: 16", "HP: 11"] }

# puts bestiary["Kobold"]


# New Syntax (looks more like JSON)

myCharacters = { Garrari: "Paladin", Father_Tubbins: "Cleric", Wit: "Bard" }

# puts myCharacters[:Father_Tubbins]


# Adding to a Hash

# myCharacters[:Rangrim] = "Trickery Domain Cleric"

# puts myCharacters


# Combining Hashes

# swordCoastLeaders = { "Daggerford" => "Lady Morwen" }
# curseOfStrahd = { "Barovia" => "Dark Lord Strahd" }

# combinedLeaders = swordCoastLeaders.merge(curseOfStrahd)

# puts combinedLeaders


# Looking up in a hash without brackets:
# puts combinedLeaders.fetch("Barovia")


# Get all keys from a hash
# puts myCharacters.keys


# Find how many objects are in a hash

# puts myCharacters.length
# puts myCharacters.size