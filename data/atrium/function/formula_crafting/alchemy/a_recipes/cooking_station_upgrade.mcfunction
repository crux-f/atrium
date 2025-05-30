# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check EAST for Oak Stairs
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:oak_stairs",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:oak_stairs",count:1}}] run scoreboard players add @s valid_ingredients 1
# Check WEST for Iron Ingot
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_ingot",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_ingot",count:1}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Item Frame
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:item_frame",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:item_frame",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check that there isn't already a Cooking Station installed
execute unless entity @s[tag=atrium_cooking_station_installed] run scoreboard players add @s valid_ingredients 1
#
# Check to make sure there is space. If there isn't, put a floating marker there to show which blocks need to be removed.
execute positioned ~2 ~ ~-2 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~3 ~ ~-2 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~2 ~1 ~-2 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~3 ~1 ~-2 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
#
execute positioned ~2 ~ ~-2 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:{text:"Upgrade Block Marker","italic":false},Item:{id:"minecraft:barrier",count:1}}
execute positioned ~3 ~ ~-2 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:{text:"Upgrade Block Marker","italic":false},Item:{id:"minecraft:barrier",count:1}}
execute positioned ~2 ~1 ~-2 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:{text:"Upgrade Block Marker","italic":false},Item:{id:"minecraft:barrier",count:1}}
execute positioned ~3 ~1 ~-2 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:{text:"Upgrade Block Marker","italic":false},Item:{id:"minecraft:barrier",count:1}}
#
scoreboard players set @e[type=minecraft:snowball,distance=..10,tag=atrium_upgrade_marker] charge -200
#
execute if entity @s[scores={valid_ingredients=8..}] run tag @s add atrium_cooking_station_installed
execute if entity @s[scores={valid_ingredients=8..}] at @s run function atrium:formula_crafting/alchemy/additions/build_cooking_station
execute if entity @s[scores={valid_ingredients=8..}] at @s run function atrium:formula_crafting/alchemy/alchemy_reset
scoreboard players set @s valid_ingredients 0
