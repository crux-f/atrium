# Run from special_entity_manager
#
scoreboard players add @s charge 1
# Conjured Blocks (Disappear when count reaches 0)
# (used by Arcane Ward, Conjure Tree, Flare)
execute if entity @s[tag=atrium_temporary_block,scores={charge=0..}] run function atrium:entities/remove_conjured_block
# Conjured Entities (Disappear when count reaches 0)
execute if entity @s[tag=atrium_temporary_entity,scores={charge=1..}] run kill @s