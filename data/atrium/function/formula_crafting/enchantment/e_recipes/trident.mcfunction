# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check to make sure the Runic Codex has a Occult Altar upgrade installed
execute if data entity @s data.occult_altar_installed run scoreboard players add @s valid_ingredients 1
#
# Check NORTH EAST for Diamond Sword
execute positioned ~2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:damage":0}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:damage":0}}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH WEST for Diamond Sword
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:damage":0}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:damage":0}}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Diamond
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond",count:1}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Prismarine Shard
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_shard",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_shard",count:1}}] run scoreboard players add @s valid_ingredients 1
# Check WEST for Prismarine Shard
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_shard",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_shard",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# RUNE CHECK
#
execute if data block ~-1 ~ ~-5 {Items:[{Slot:3b,components:{"minecraft:custom_data":{atrium_rune:"t"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~-1 ~ ~-5 {Items:[{Slot:4b,components:{"minecraft:custom_data":{atrium_rune:"r"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~-1 ~ ~-5 {Items:[{Slot:5b,components:{"minecraft:custom_data":{atrium_rune:"i"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~ ~ ~-5 {Items:[{Slot:3b,components:{"minecraft:custom_data":{atrium_rune:"d"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~ ~ ~-5 {Items:[{Slot:4b,components:{"minecraft:custom_data":{atrium_rune:"e"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~ ~ ~-5 {Items:[{Slot:5b,components:{"minecraft:custom_data":{atrium_rune:"n"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~1 ~ ~-5 {Items:[{Slot:3b,components:{"minecraft:custom_data":{atrium_rune:"t"}}}]} run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=13..}] run summon item ~ ~1 ~ {Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:trident",count:1}}
execute if entity @s[scores={valid_ingredients=13..}] run function atrium:formula_crafting/enchantment/enchantment_reset
execute if entity @s[scores={valid_ingredients=13..}] run function atrium:formula_crafting/enchantment/altar_reset
execute if entity @s[scores={valid_ingredients=13..}] run advancement grant @p[gamemode=!spectator,distance=..10] only atrium:magic/secrets_of_the_deep
#
# tellraw @a [{"text":"Validation reached: [","color":"gray"},{"score":{"name":"@s","objective":"valid_ingredients"},"bold":true,"color":"gray"},{"text":"]","color":"gray"}]
