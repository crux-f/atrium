# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check to make sure the Runic Codex has a Occult Altar upgrade installed
execute if data entity @s data.occult_altar_installed run scoreboard players add @s valid_ingredients 1
#
# Check NORTH EAST for Emerald
execute positioned ~2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",count:1}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH WEST for Emerald
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",count:1}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH for Enchantment Catalyst [Transforming]
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_catalyst_transforming:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_catalyst_transforming:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Potion of Luck (5:00)
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:luck"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:luck"}}}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH EAST for Stripped Birch Wood
execute positioned ~2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood",count:1}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Stripped Birch Wood
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood",count:1}}] run scoreboard players add @s valid_ingredients 1
# Check WEST for Stripped Birch Wood
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood",count:1}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood",count:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check for a nearby player (within 10 blocks) who has at least 50 levels of XP
execute if entity @a[distance=..10,gamemode=!spectator,level=50..] run scoreboard players add @s valid_ingredients 1
#
# RUNE CHECK
#
execute if data block ~-1 ~ ~-5 {Items:[{Slot:0b,components:{"minecraft:custom_data":{atrium_rune:"b"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~-1 ~ ~-5 {Items:[{Slot:1b,components:{"minecraft:custom_data":{atrium_rune:"e"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~-1 ~ ~-5 {Items:[{Slot:2b,components:{"minecraft:custom_data":{atrium_rune:"c"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~ ~ ~-5 {Items:[{Slot:0b,components:{"minecraft:custom_data":{atrium_rune:"o"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~ ~ ~-5 {Items:[{Slot:1b,components:{"minecraft:custom_data":{atrium_rune:"m"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~ ~ ~-5 {Items:[{Slot:2b,components:{"minecraft:custom_data":{atrium_rune:"e"}}}]} run scoreboard players add @s valid_ingredients 1
#
execute if data block ~-1 ~ ~-5 {Items:[{Slot:3b,components:{"minecraft:custom_data":{atrium_rune:"u"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~-1 ~ ~-5 {Items:[{Slot:4b,components:{"minecraft:custom_data":{atrium_rune:"n"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~-1 ~ ~-5 {Items:[{Slot:5b,components:{"minecraft:custom_data":{atrium_rune:"d"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~ ~ ~-5 {Items:[{Slot:3b,components:{"minecraft:custom_data":{atrium_rune:"y"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~ ~ ~-5 {Items:[{Slot:4b,components:{"minecraft:custom_data":{atrium_rune:"i"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~ ~ ~-5 {Items:[{Slot:5b,components:{"minecraft:custom_data":{atrium_rune:"n"}}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~1 ~ ~-5 {Items:[{Slot:3b,components:{"minecraft:custom_data":{atrium_rune:"g"}}}]} run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=22..}] run summon item ~ ~1 ~ {Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:totem_of_undying",count:1}}
execute if entity @s[scores={valid_ingredients=22..}] run function atrium:formula_crafting/enchantment/enchantment_reset
execute if entity @s[scores={valid_ingredients=22..}] run function atrium:formula_crafting/enchantment/altar_reset
execute if entity @s[scores={valid_ingredients=22..}] run advancement grant @p[gamemode=!spectator,distance=..10] only atrium:magic/become_undying
#
# Take 5 levels of XP from a random nearby player (within 10 blocks) who has at least 50 levels of XP
execute if entity @s[scores={valid_ingredients=12..}] as @r[distance=..10,level=50..,gamemode=!spectator] run xp add @s -5 levels
# tellraw @a [{"text":"Validation reached: [","color":"gray"},{"score":{"name":"@s","objective":"valid_ingredients"},"bold":true,"color":"gray"},{"text":"]","color":"gray"}]
