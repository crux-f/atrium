# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check to make sure the Alchemy Cauldron has a Cooking Station upgrade installed
execute if entity @s[tag=atrium_cooking_station_installed] run scoreboard players add @s valid_ingredients 1
#
# Check EAST for Glow Ink Sac
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_ink_sac"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_ink_sac"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Bowl
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bowl"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bowl"}}] run scoreboard players add @s valid_ingredients 1
# Check Crafting Station for Sugar
execute positioned ~2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sugar"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sugar"}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=4..}] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:beetroot_soup",components:{"minecraft:custom_model_data":{strings:["atrium_dark_sauce"]},"minecraft:item_name":{text:'Dark Sauce'},"minecraft:custom_data":{atrium_dark_sauce:1b}}}}
execute if entity @s[scores={valid_ingredients=4..}] at @s run function atrium:formula_crafting/alchemy/alchemy_reset
execute if entity @s[scores={valid_ingredients=4..}] at @s run function atrium:formula_crafting/alchemy/station_reset
scoreboard players set @s valid_ingredients 0
