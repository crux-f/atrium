# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check NORTH WEST for Golden Pickaxe
execute positioned ~-2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:golden_pickaxe",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:golden_pickaxe",Count:1b}}] run scoreboard players add @s codex 1
#
# Check EAST for Item enchanted with Efficiency III
execute positioned ~3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:3s}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:3s}]}}}] run scoreboard players add @s codex 1
execute positioned ~3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:efficiency",lvl:3s}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:efficiency",lvl:3s}]}}}] run scoreboard players add @s codex 1
#
# Check SOUTH EAST for Wooden Pickaxe
execute positioned ~2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b}}] run scoreboard players add @s codex 1
#
# Check SOUTH WEST for Stone Pickaxe
execute positioned ~-2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone_pickaxe",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone_pickaxe",Count:1b}}] run scoreboard players add @s codex 1
#
# Check WEST for Item enchanted with Fortune III
execute positioned ~-3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:fortune",lvl:3s}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:fortune",lvl:3s}]}}}] run scoreboard players add @s codex 1
execute positioned ~-3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:fortune",lvl:3s}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:fortune",lvl:3s}]}}}] run scoreboard players add @s codex 1
#
# Check NORTH EAST for Iron Pickaxe
execute positioned ~2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_pickaxe",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_pickaxe",Count:1b}}] run scoreboard players add @s codex 1
#
execute if entity @s[scores={codex=6..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{display:{Name:'{"text":"Core Pickaxe","color":"#1F6933","italic":false}',Lore:['{"text":"Essence Finder I","color":"gray","italic":false}','{"text":"Flecks of iron and gold"}','{"text":"glint within its rune-covered"}','{"text":"surface."}']},core_pickaxe:1b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:5s},{id:"minecraft:fortune",lvl:1s}]}}}
execute if entity @s[scores={codex=6..}] at @s run function atrium:magic/runic_codex/rc_reset
scoreboard players set @s codex 0
