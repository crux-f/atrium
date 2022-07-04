# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check NORTH WEST for Golden Sword
execute positioned ~-2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:golden_sword",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:golden_sword",Count:1b}}] run scoreboard players add @s codex 1
#
# Check EAST for Item enchanted with Sharpness III
execute positioned ~3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:sharpness",lvl:3s}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:sharpness",lvl:3s}]}}}] run scoreboard players add @s codex 1
execute positioned ~3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:sharpness",lvl:3s}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:sharpness",lvl:3s}]}}}] run scoreboard players add @s codex 1
#
# Check SOUTH EAST for Blue Ice
execute positioned ~2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run scoreboard players add @s codex 1
#
# Check SOUTH WEST for Blue Ice
execute positioned ~-2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run scoreboard players add @s codex 1
#
# Check WEST for Item enchanted with Looting III
execute positioned ~-3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:looting",lvl:3s}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:looting",lvl:3s}]}}}] run scoreboard players add @s codex 1
execute positioned ~-3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:looting",lvl:3s}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:looting",lvl:3s}]}}}] run scoreboard players add @s codex 1
#
# Check NORTH EAST for Iron Sword
execute positioned ~2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_sword",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_sword",Count:1b}}] run scoreboard players add @s codex 1
#
execute if entity @s[scores={codex=6..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'{"text":"Essence Blade","color":"#910000","italic":false}',Lore:['{"text":"Essence Reaper I","color":"gray","italic":false}','{"text":"Frost gathers on the edges,"}','{"text":"promising to find the"}','{"text":"magical essence contained"}','{"text":"within its victims."}']},sac_blade:1b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:looting",lvl:1s},{id:"minecraft:unbreaking",lvl:5s}]}}}
execute if entity @s[scores={codex=6..}] at @s run function atrium:magic/runic_codex/rc_reset
scoreboard players set @s codex 0
