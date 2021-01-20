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

puts loot