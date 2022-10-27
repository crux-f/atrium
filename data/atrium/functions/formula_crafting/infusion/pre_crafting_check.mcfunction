# Check to verify that the infusion circle is intact.
#
# Check for the glow item frames.
# CENTER NORTH
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# CENTER EAST
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# CENTER SOUTH
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# CENTER WEST
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
#
# NORTH
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# NORTH-EAST
execute positioned ~3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# EAST
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# SOUTH-EAST
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# SOUTH
execute positioned ~ ~ ~4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# SOUTH-WEST
execute positioned ~-3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# WEST
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
# NORTH-WEST
execute positioned ~-3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
#
#
# Total = 12
#
# If the circle is 11 or lower, it fails and gives you a message.
execute if entity @s[scores={valid_ingredients=..11}] run function atrium:formula_crafting/infusion/err_circle_broken
#
# If the circle has 12 or higher, the check passes.
#
execute if entity @s[scores={valid_ingredients=12..}] run function atrium:formula_crafting/infusion/infusion_base_item
# Reset score
scoreboard players set @s valid_ingredients 0
