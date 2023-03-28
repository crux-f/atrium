# Run from special_entity_manager
#
scoreboard players add @s charge 1
# Locate Ore spell markers
execute if entity @s[tag=atrium_locate_ore_marker,scores={charge=600..}] run kill @s
# Conjured Blocks (Disappear after 2 minutes)
# (used by Conjure Tree)
execute if entity @s[tag=atrium_conjured_block_2m,scores={charge=2400..}] run function atrium:entities/remove_conjured_block
#
# Adding a safeguard tag that I can use to make sure some edge cases are covered (e.g. a user disconnecting in the 2 second window
# between casting Conjure Tree and the root getting removed). Entities with this tag are removed after 10 minutes.
execute if entity @s[tag=atrium_cleanup_safeguard,scores={charge=12000..}] run kill @s