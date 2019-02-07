# EX10
# ====
# We started writing an RPG game, but we already run into an error message. 
# Find the problem and fix it.
# -----------

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20, humour: 3, charisma: -3 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_sym

player.merge(character_classes[input])

puts 'Your character stats:'
puts player

# ANSWER
# ======
# We are attempting to access a key-value pair from the `character_classes` 
# hash using element reference.  The keys in that hash are symbols and we 
# are trying to reference them using a String value.  This will always return
# `nil`.  We then proceed to invoke `Hash#merge` on `player` passing in
# this `nil` value when it is expecting a `Hash` object.  At this point,
# Ruby raises a `TypeError` exception.
# We can fix this by invoking `to_sym` on the resulting value of 
# `gets.chomp.downcase`.

# Merging the two hashes will not achieve the desired upgrade of stats.  It
# will simply replace a specific key's value in the caller with that key's 
# value as defined in the argument hash.
# The upgrade should instead add the amount to the already existing value.
#
# We can achieve this by leverageing the optional block that can be
# passed into a `Hash#merge!` invocation.  By passing in a block, we can
# determine the value of duplicate keys with code in the block that
# takes advantage of the block parameters that reference: the duplicate 
# key at hand, that key's value in the caller, and that key's value in the 
# argument hash. 

player.merge!(character_classes[input]) do |_k, old_val, new_val| 
  puts _k
  old_val + new_val 
end

puts 'Your character stats:'
puts player

