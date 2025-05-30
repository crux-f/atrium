# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check NORTH for Gray Carpet
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gray_carpet",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gray_carpet",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check NORTH EAST for Black Candle
execute positioned ~2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:black_candle",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:black_candle",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check NORTH WEST for Black Candle
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:black_candle",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:black_candle",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check EAST for Black Candle
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:black_candle",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:black_candle",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check WEST for Black Candle
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:black_candle",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:black_candle",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check SOUTH EAST for Cobblestone
execute positioned ~2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cobblestone",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cobblestone",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check SOUTH WEST for Cobblestone
execute positioned ~-2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cobblestone",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cobblestone",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check that there isnt already an Occult Altar installed
execute unless entity @s[tag=atrium_occult_altar_installed] run scoreboard players add @s valid_ingredients 1
#
# Check to make sure there is space. If there isnt, put a floating marker there to show which blocks need to be removed.
execute positioned ~ ~ ~-5 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~1 ~ ~-5 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-1 ~ ~-5 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
# Decor
execute positioned ~ ~1 ~-5 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~1 ~1 ~-5 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-1 ~1 ~-5 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
#
execute positioned ~ ~ ~-5 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:{"text":"Upgrade Block Marker","italic":false},Item:{id:"minecraft:barrier",count:1}}
execute positioned ~1 ~ ~-5 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:{"text":"Upgrade Block Marker","italic":false},Item:{id:"minecraft:barrier",count:1}}
execute positioned ~-1 ~ ~-5 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:{"text":"Upgrade Block Marker","italic":false},Item:{id:"minecraft:barrier",count:1}}
execute positioned ~ ~1 ~-5 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:{"text":"Upgrade Block Marker","italic":false},Item:{id:"minecraft:barrier",count:1}}
execute positioned ~1 ~1 ~-5 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:{"text":"Upgrade Block Marker","italic":false},Item:{id:"minecraft:barrier",count:1}}
execute positioned ~-1 ~1 ~-5 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:{"text":"Upgrade Block Marker","italic":false},Item:{id:"minecraft:barrier",count:1}}
scoreboard players set @e[type=minecraft:snowball,distance=..10,tag=atrium_upgrade_marker] charge -200
#
execute if entity @s[scores={valid_ingredients=14..}] at @s run tag @s add atrium_occult_altar_installed
execute if entity @s[scores={valid_ingredients=14..}] at @s run function atrium:formula_crafting/enchantment/additions/build_occult_altar
execute if entity @s[scores={valid_ingredients=14..}] at @s run function atrium:formula_crafting/enchantment/enchantment_reset
# tellraw crux_f ["",{"text":"Reached - - - "},{"score":{"name":"@s","objective":"valid_ingredients"},"color":"dark_aqua"}]
scoreboard players set @s valid_ingredients 0