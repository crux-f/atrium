# Check to verify that the alchemy cauldron is intact.
#
# Check for the glow item frames.
# NORTH
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# EAST
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# SOUTH
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# WEST
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
#
#
# Total = 4
#
# If the circle is 3 or lower, it fails and gives you a message.
execute if entity @s[scores={valid_ingredients=..3}] run function atrium:formula_crafting/alchemy/err_cauldron_broken
#
# If the circle has 4 or higher, the check passes.
#
execute if entity @s[scores={valid_ingredients=4..}] run function atrium:formula_crafting/alchemy/alchemy_base_item
# Reset score
scoreboard players set @s valid_ingredients 0
