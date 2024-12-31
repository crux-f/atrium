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
# Check for the Cauldron.
execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:cauldron run scoreboard players add @s valid_ingredients 1
execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:water_cauldron run scoreboard players add @s valid_ingredients 1
execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:lava_cauldron run scoreboard players add @s valid_ingredients 1
execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:powder_snow_cauldron run scoreboard players add @s valid_ingredients 1
#
# Total = 5
#
# If the circle is 4 or lower, it fails and gives you a message.
execute if entity @s[scores={valid_ingredients=..4}] run function atrium:formula_crafting/alchemy/err_cauldron_broken
#
# If the Cooking Station is installed, check to make sure it is intact.
execute positioned ~2 ~ ~-2 if block ~ ~ ~ minecraft:crafting_table run scoreboard players add @s valid_ingredients 1
execute positioned ~2 ~1 ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
execute positioned ~3 ~ ~-2 if block ~ ~ ~ minecraft:oak_stairs run scoreboard players add @s valid_ingredients 1
execute positioned ~3 ~ ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_sword",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# If you have the Station installed and the cauldron is 8 or lower, it fails and gives you a message.
execute if entity @s[scores={valid_ingredients=..8}] if data entity @s data.cooking_station_installed run function atrium:formula_crafting/alchemy/err_station_broken
#
# Cooking Station
#
# If you have the Station installed and the cauldron has 9 or higher, the check passes.
execute unless entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}}] if entity @s[scores={valid_ingredients=9..}] if data entity @s data.cooking_station_installed run function atrium:formula_crafting/alchemy/alchemy_base_item
# If the player is holding a Rod of Relocation, run the pack it up script instead.
execute if entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}},level=5..] if entity @s[scores={valid_ingredients=9..}] if data entity @s data.cooking_station_installed run function atrium:items/use/placeable_structures/alchemy_cauldron/pack_alchemy_cauldron
#
# Regular
#
# If the cauldron has 5 or higher, the check passes.
#
execute unless entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}}] if entity @s[scores={valid_ingredients=5..}] unless data entity @s data.cooking_station_installed run function atrium:formula_crafting/alchemy/alchemy_base_item
# If the player is holding a Rod of Relocation, run the pack it up script instead.
execute if entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}},level=5..] if entity @s[scores={valid_ingredients=5..}] unless data entity @s data.cooking_station_installed run function atrium:items/use/placeable_structures/alchemy_cauldron/pack_alchemy_cauldron
#
# Reset Score
scoreboard players reset @s valid_ingredients
