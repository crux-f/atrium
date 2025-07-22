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
execute if entity @s[tag=atrium_cooking_station_installed] positioned ~2 ~ ~-2 if block ~ ~ ~ minecraft:crafting_table run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_cooking_station_installed] positioned ~2 ~1 ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5] run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_cooking_station_installed] positioned ~3 ~ ~-2 if block ~ ~ ~ minecraft:oak_stairs run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_cooking_station_installed] positioned ~3 ~ ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_sword",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# If you only have the Station installed and the cauldron is 8 or lower, it fails and gives you a message.
execute if entity @s[scores={valid_ingredients=..8}] if entity @s[tag=atrium_cooking_station_installed,tag=!atrium_mixology_lab_installed] run function atrium:formula_crafting/alchemy/err_station_broken
#
# Cooking Station
#
# tellraw @a [{"text":"Validation reached: [","color":"gray"},{"score":{"name":"@s","objective":"valid_ingredients"},"bold":true,"color":"gray"},{"text":"]","color":"gray"}]
# If you only have the Station installed and the cauldron has 9 or higher, the check passes.
execute unless entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}}] if entity @s[scores={valid_ingredients=9..}] if entity @s[tag=atrium_cooking_station_installed,tag=!atrium_mixology_lab_installed] run function atrium:formula_crafting/alchemy/alchemy_base_item
# If the player is holding a Rod of Relocation, run the pack it up script instead.
execute if entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}},level=5..] if entity @s[scores={valid_ingredients=9..}] if entity @s[tag=atrium_cooking_station_installed,tag=!atrium_mixology_lab_installed] run function atrium:items/use/placeable_structures/alchemy_cauldron/pack_alchemy_cauldron
#
# If the Mixology Lab is installed, check to make sure it is intact.
execute if entity @s[tag=atrium_mixology_lab_installed] positioned ~-2 ~ ~-2 if block ~ ~ ~ minecraft:decorated_pot run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_mixology_lab_installed] positioned ~-3 ~ ~-2 if block ~ ~ ~ minecraft:magma_block run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_mixology_lab_installed] positioned ~-3 ~ ~-1 if block ~ ~ ~ minecraft:waxed_copper_trapdoor run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_mixology_lab_installed] positioned ~-4 ~ ~-2 if block ~ ~ ~ minecraft:waxed_copper_trapdoor run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_mixology_lab_installed] positioned ~-3 ~ ~-3 if block ~ ~ ~ minecraft:waxed_copper_trapdoor run scoreboard players add @s valid_ingredients 1
execute if entity @s[tag=atrium_mixology_lab_installed] positioned ~-3 ~1 ~-2 if block ~ ~ ~ minecraft:brewing_stand run scoreboard players add @s valid_ingredients 1
#
# If you only have the Lab installed and the cauldron is 10 or lower, it fails and gives you a message.
execute if entity @s[scores={valid_ingredients=..10}] if entity @s[tag=atrium_mixology_lab_installed,tag=!atrium_cooking_station_installed] run function atrium:formula_crafting/alchemy/err_lab_broken
#
# Mixology Lab
#
# If you only have the Lab installed and the cauldron has 11 or higher, the check passes.
execute unless entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}}] if entity @s[scores={valid_ingredients=11..}] if entity @s[tag=!atrium_cooking_station_installed,tag=atrium_mixology_lab_installed] run function atrium:formula_crafting/alchemy/alchemy_base_item
# If the player is holding a Rod of Relocation, run the pack it up script instead.
execute if entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}},level=5..] if entity @s[scores={valid_ingredients=11..}] if entity @s[tag=!atrium_cooking_station_installed,tag=atrium_mixology_lab_installed] run function atrium:items/use/placeable_structures/alchemy_cauldron/pack_alchemy_cauldron
#
# If you have both upgrades installed and the cauldron is 14 or lower, it fails and gives you a message.
execute if entity @s[scores={valid_ingredients=..14}] if entity @s[tag=atrium_mixology_lab_installed,tag=atrium_cooking_station_installed] run function atrium:formula_crafting/alchemy/err_all_upgrades_broken
#
# Both Upgrades
#
# If you have both the Cooking Station AND Mixology Lab installed, the check requires all 15 verifications to pass.
execute unless entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}}] if entity @s[scores={valid_ingredients=15..}] if entity @s[tag=atrium_cooking_station_installed,tag=atrium_mixology_lab_installed] run function atrium:formula_crafting/alchemy/alchemy_base_item
# If the player is holding a Rod of Relocation, run the pack it up script instead.
execute if entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}},level=5..] if entity @s[scores={valid_ingredients=15..}] if entity @s[tag=atrium_cooking_station_installed,tag=atrium_mixology_lab_installed] run function atrium:items/use/placeable_structures/alchemy_cauldron/pack_alchemy_cauldron
#
# Regular
#
# If the cauldron has 5 or higher, the check passes.
#
execute unless entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}}] if entity @s[scores={valid_ingredients=5..}] unless entity @s[tag=atrium_cooking_station_installed] unless entity @s[tag=atrium_mixology_lab_installed] run function atrium:formula_crafting/alchemy/alchemy_base_item
# If the player is holding a Rod of Relocation, run the pack it up script instead.
execute if entity @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}},level=5..] if entity @s[scores={valid_ingredients=5..}] unless entity @s[tag=atrium_cooking_station_installed] unless entity @s[tag=atrium_mixology_lab_installed] run function atrium:items/use/placeable_structures/alchemy_cauldron/pack_alchemy_cauldron
#
# tellraw @a [{"text":"Validation reached: [","color":"gray"},{"score":{"name":"@s","objective":"valid_ingredients"},"bold":true,"color":"gray"},{"text":"]","color":"gray"}]
# Reset Score
scoreboard players reset @s valid_ingredients
