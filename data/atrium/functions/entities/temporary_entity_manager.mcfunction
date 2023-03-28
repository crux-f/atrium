# Run from special_entity_manager
#
scoreboard players add @s charge 1
# Locate Ore spell markers
execute if entity @s[tag=atrium_locate_ore_marker,scores={charge=600..}] run kill @s